class ScoreController < ApplicationController

  def index
    @blur_scores = Score.all.sort_blurs
    @brightness_scores = Score.all.sort_brightness
  end

end
