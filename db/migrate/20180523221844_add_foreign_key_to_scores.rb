class AddForeignKeyToScores < ActiveRecord::Migration[5.1]
  def change
    add_reference :scores, :category, foreign_key: true
  end
end
