class DonationsController < ApplicationController

  def index
    @donations = Donation.all
    render :index
  end
  
end
