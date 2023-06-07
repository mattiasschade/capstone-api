class ChangePaymentInfoExpirationToString < ActiveRecord::Migration[7.0]
  def change
    change_column :payment_infos, :expiration, :string
  end
end
