class CreateMatchPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :match_points do |t|
      t.string :type_of_shot
      t.integer :point
      t.string :team_played
			t.references :match

      t.timestamps
    end
  end
end
