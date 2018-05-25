class Category < ApplicationRecord
  has_many :scores

  def get_blur_scores
    blur_scores = {}
    scores.map do |score| 
      blur_scores[score.blur] ? blur_scores[score.blur] += 1 : blur_scores[score.blur] = 1
    end
    blur_scores
  end

  def get_brightness_scores
    brightness_scores = {}
    scores.map do |score| 
      brightness_scores[score.brightness] ? brightness_scores[score.brightness] += 1 : brightness_scores[score.brightness] = 1
    end
    brightness_scores
  end
end
