class LocationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.new(location_name: params[:location][:location_name] , landmark: params[:location][:landmark] , city: params[:location][:city] , pincode: params[:location][:pincode])
    if location.save
      redirect_to new_booking_request_path
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
