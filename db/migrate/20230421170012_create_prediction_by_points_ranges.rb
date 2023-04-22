class CreatePredictionByPointsRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :prediction_by_points_ranges do |t|
			t.references :match
      t.timestamps
    end
  end
end
