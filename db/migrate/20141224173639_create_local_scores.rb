class CreateLocalScores < ActiveRecord::Migration
  def change
    create_table :local_scores do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
