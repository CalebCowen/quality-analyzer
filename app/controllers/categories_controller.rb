class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @brightness_scores = @category.get_brightness_scores.sort_by {|k, v| v}
    @blur_scores = @category.get_blur_scores {|k, v| v}
  end
end
