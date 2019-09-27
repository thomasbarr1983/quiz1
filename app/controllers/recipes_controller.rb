class RecipesController < ApplicationController
  def index
    @recipe = Recipe.last
end


  def create
    Recipe.create(recipe_params)
    if @recipe.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  def about
  end

  private

  def recipe_params
    params.require(:recipe).permit(:ingredients, :cooking_method, :name)
  end
end    