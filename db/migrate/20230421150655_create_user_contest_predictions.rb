class CreateUserContestPredictions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_contest_predictions do |t|
			t.boolean :prediction_outcome 
			t.integer :amount_earned
			t.references :predictable, polymorphic: true
			t.references :user_contest

      t.timestamps
    end
  end
end
