class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :match_name
      t.time :duration
      t.string :location
      t.string :match_status
      t.string :winner
			t.integer :team_1_score 
			t.integer :team_2_score 

      t.timestamps
    end
  end
end
