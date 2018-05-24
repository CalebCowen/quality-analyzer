class Score < ApplicationRecord
  belongs_to :category

  def sort_blurs
    scores = {}
    Score.all.pluck(:blur).each do |score|
      scores[score] ? scores[score] += 1 : scores[score] = 1 
    end

    scores
  end
  
  def sort_brightness
    scores = {}
    Score.all.pluck(:brightness).each do |score|
      scores[score] ? scores[score] += 1 : scores[score] = 1 
    end

    scores
  end
end
