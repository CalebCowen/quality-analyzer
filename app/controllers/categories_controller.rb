class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @brightness_scores = @category.get_brightness_scores
    @blur_scores = @category.get_blur_scores
  end
end
