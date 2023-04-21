class RidesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ride = Ride.new

    
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def waiting
  @booking_request = BookingRequest.find_by(id: params[:id])
  p @booking_request
  if @booking_request.booking_status == "booked"
    redirect_to new_ride_path
  end

  end

  def drivers_ride
    
  end

end
