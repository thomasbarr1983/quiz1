class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end


  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  def about
  end

  def new
    @recipe = Recipe.new
  end
  private

  def recipe_params
    params.require(:recipe).permit(:ingredients, :cooking_method, :name)
  end
end

