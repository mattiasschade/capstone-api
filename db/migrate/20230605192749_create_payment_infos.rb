class CreatePaymentInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_infos do |t|
      t.string :card_number
      t.date :expiration
      t.string :cvv
      t.integer :user_id

      t.timestamps
    end
  end
end
