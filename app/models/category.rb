class Category < ApplicationRecord
  has_many :scores

  def get_blur_scores
    scores.map {|score| score.sort_blurs}
  end

  def get_brightness_scores
    scores.map {|score| score.sort_brightness}
  end
end
