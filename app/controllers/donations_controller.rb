class DonationsController < ApplicationController

  def index
    @donations = Donation.where(user_id: current_user)
    render :index
  end

  def show
    @donation = Donation.where(user_id: current_user).find_by(params[:id])
    render :show
  end

  def create
    @donation = Donation.new(
      amount: params[:amount],
      user_id: current_user.id,
      message: params[:message],
      plan_type: params[:plan_type],
      date: params[:date]
    )
    @donation.save
    render :show
  end

  def update
    @donation = Donation.find_by(params[:id])
    @donation.update(
      amount: params[:amount] || @donation.amount,
      message: params[:message] || @donation.message,
      plan_type: params[:plan_type] || @donation.plan_type,
      date: params[:date] || @donation.date
    )
    render :show
  end

  
end
