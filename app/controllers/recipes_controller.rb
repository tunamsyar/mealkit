# frozen_literal_string: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.load_all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
