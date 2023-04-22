class CreatePredictionByTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :prediction_by_teams do |t|
			t.references :user_contest_prediction 
			t.references :match
      t.timestamps
    end
  end
end
