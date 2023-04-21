class BookingRequestsController < ApplicationController
  def index
    @booking_requests = BookingRequest.where(city: "Coimbatore" , booking_status: "available" , vehicle_type: "Bike" )

  end

  def show
  end

  def newflexbox bootstrap
    @location_array = Location.all.pluck(:location_name)
    @booking = BookingRequest.new
  end

  def create
    
    fromLocationId = Location.find_by(location_name: params[:booking_request][:from_location_name])
    toLocationId =   Location.find_by(location_name: params[:booking_request][:to_location_name])
    booking_request = BookingRequest.new(city: params[:booking_request][:city] , booking_status: "available" , vehicle_type: params[:booking_request][:vehicle_type] , from_location_id: fromLocationId.id , to_location_id: toLocationId.id , rider_id: 2 , from_location_name: params[:booking_request][:from_location_name], to_location_name: params[:booking_request][:to_location_name]) 
    if  booking_request.save
      redirect_to waiting_path(id: booking_request.id)
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

  def accept 
    booking_request1 = BookingRequest.find_by(id: params[:id])
    booking_request1.booking_status = "booked"
    booking_request1.save
    p booking_request1
    p 'br'
    redirect_to drivers_ride_path(id: booking_request1.id) 
  end



  

end
