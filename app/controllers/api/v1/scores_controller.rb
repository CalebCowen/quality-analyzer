class Api::V1::ScoresController < ApplicationController

  def create
    cat = Category.find_or_create_by(name: params[:category])
    cat.scores.create(blur: params[:blur], brightness: params[:brightness])
    render status: :ok, json: @controller.to_json 
  end
end
