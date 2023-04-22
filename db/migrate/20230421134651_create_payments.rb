class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :total_fee
      t.integer :total_prize_money
      t.integer :taxes
      t.integer :gross_profit
      t.integer :net_profit
			t.references :contest

      t.timestamps
    end
  end
end
