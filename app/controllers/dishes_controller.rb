class DishesController < ApplicationController
    before_action :ingredients_by_category, only: [:new_burrito, :new_burrito_bowl, :new_taco, :edit]
    before_action :logged_in_check, only: [:new_burrito, :new_burrito_bowl, :new_taco]
    before_action :this_user, only: [:create, :update, :destroy]

    # def index
    #     @dishes = Dish.all
    # end

    def show
        @dish = Dish.find(params[:id])
    end

    def logged_in_check
        if session[:username]
            @logged_in_user = User.find_by(username: session[:username])
        else
            flash[:notification] = "You must be logged in to order."
            redirect_to "/order"
        end
    end

    def new_burrito
        @dish = Dish.new(name: "Burrito", dish_price: 0, description: "Flour Tortilla With Your Choice of Meat, Sofritos, Rice, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: "order/burrito.png")
    end

    def new_burrito_bowl
        @dish = Dish.new(name: "Burrito Bowl", dish_price: 0, description: "Served In A Bowl With Your Choice of Meat, Sofritos, Rice, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: "order/burrito-bowl.png")
    end

    # def new_taco
    #     @dish = Dish.create(name: "Taco", dish_price: 0, description: "Your Choice Of Three Tacos Filled With Meat or Sofritos, Beans, Or Fajita Veggies, Queso, Salsa, Guacamole, And Sour Cream, or Cheese, and Romaine Lettuce.", image_url: "order/taco.png")
    # end

    def create
        Dish.create_dish_ingredients(dish_param_id, ingredient_params)
        dish = Dish.find(dish_param_id)
        dish.total_for_dish.round(3)
        dish.save
        dishbag = DishBag.create(dish: dish, bag: @user.bag)
        redirect_to "/bags/#{@user.bag.id}"
    end

    def edit
        @dish = Dish.find(params[:id])
        @dish.dish_ingredients.clear
        render :edit
    end

    def update
        @dish = Dish.find(dish_param_id)
        @dish.dish_price = 0
        @dish.total_for_dish
        Dish.create_dish_ingredients(dish_param_id, ingredient_params)
        redirect_to "/bags/#{@user.id}"
    end

    def destroy
        @dish = Dish.find(params[:id])
        # byebug
        @dish.destroy
        redirect_to "/bags/#{@user.id}"
    end

    private

    def ingredients_by_category
        @proteins = Ingredient.select_by_category("protein")
        @grains = Ingredient.select_by_category("grain")
        @beans = Ingredient.select_by_category("bean")
        @toppings = Ingredient.select_by_category("toppings")
    end

    def dish_param_id
        hash = params.permit(:dish)
        hash[:dish].to_i
    end

    def ingredient_params
        hash = {}
        hash[:ingredient] = params.require(:ingredient).permit("protein", "grain", "bean")
        hash[:ingredient][:toppings] = params.require(:ingredient).require(:toppings).permit("Queso", "Guacamole", "Fresh Tomato Salsa", "Roasted Corn-Chili Salsa", "Tomatillo-Green Chili Salsa", "Tomatillo-Red Chili Salsa", "Sour Cream", "Fajita Veggies", "Cheese", "Romaine Lettuce")
        hash
    end

    def this_user
        @user = User.find_by(username: session[:username])
    end

end

