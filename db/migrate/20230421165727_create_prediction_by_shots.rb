class CreatePredictionByShots < ActiveRecord::Migration[7.0]
  def change
    create_table :prediction_by_shots do |t|
			t.references :match_point
      t.timestamps
    end
  end
end
