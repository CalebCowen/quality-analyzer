class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.float :brightness
      t.float :blur
      t.timestamps
    end
  end
end
