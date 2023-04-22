class CreateContests < ActiveRecord::Migration[7.0]
  def change
    create_table :contests do |t|
      t.string :name_of_contest
      t.string :contest_type
      t.integer :entry_fee
      t.string :status_match
      t.references  :match
      t.timestamps
    end
  end
end
