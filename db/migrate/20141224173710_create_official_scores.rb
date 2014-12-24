class CreateOfficialScores < ActiveRecord::Migration
  def change
    create_table :official_scores do |t|
      t.string :game
      t.integer :score
      t.integer :high_score

      t.timestamps
    end
  end
end
