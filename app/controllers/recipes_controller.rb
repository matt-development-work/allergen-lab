class RecipesController < ApplicationController

  def index
    @recipes = Recipe.search(params[:search])
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(strong_params)
    if @recipe.errors.empty?
      redirect_to @recipe
    else 
      render :new 
    end
  end

  private

  def strong_params
    params.require(:recipe).permit!
  end

end
