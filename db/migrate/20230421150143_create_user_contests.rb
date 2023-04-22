class CreateUserContests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_contests do |t|
			t.integer :credited_amount
			t.references :user
			t.references :contest
      t.timestamps
    end
  end
end
