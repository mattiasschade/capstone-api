class DonationsController < ApplicationController

  def index
    @donations = Donation.all
    render :index
  end

  def show
    @donation = Donation.find_by(params[:id])
    render :show
  end
end
