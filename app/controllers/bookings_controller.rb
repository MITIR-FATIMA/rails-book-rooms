class BookingsController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = @room
    if @booking.save!
      redirect_to room_path(@room)
      flash[:alert] = "bien réservé"
    else
      render "rooms/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to rooms_path(@rooms)

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
