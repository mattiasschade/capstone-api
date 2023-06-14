class PaymentInfosController < ApplicationController

  def show
    @payment_info = PaymentInfo.find_by(id:[current_user.id])
    render :show
  end

  def create
    @payment_info = PaymentInfo.new(
      card_number: params[:card_number],
      expiration: params[:expiration],
      cvv: params[:cvv],
      user_id: current_user.id
    )
    @payment_info.save
    render :show
  end
end