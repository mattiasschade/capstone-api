class PaymentInfosController < ApplicationController

  def show
    @payment_info = PaymentInfo.find_by(params[:id])
    render :show
  end

  
end
