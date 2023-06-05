class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.integer :user_id
      t.text :message
      t.string :plan_type
      t.date :date

      t.timestamps
    end
  end
end
