class FoodsController < ApplicationController

  def new
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.new
  end

  def create
    @fridge = Fridge.find(params[:fridge_id])
    @food = @fridge.foods.new(food_params)
    if @food.save
      redirect_to @fridge
    else
      render :new
    end
  end

  def edit
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.find(params[:id])
  end

  def update
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.find(params[:id])
      if @food.update (food_params)
        redirect_to @fridge
      else
        render :edit
      end
  end

  def destroy
    @fridge = Fridge.find(params[:fridge_id])
    @food = Food.find(params[:id])

    @food.destroy

    redirect_to @fridge
  end


  private
    def food_params
      params.require(:food).permit(:name)
    end
    
end
