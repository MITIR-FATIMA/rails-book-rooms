class RoomsController < ApplicationController

   before_action :set_room, only: [:edit, :update]

  def index
    @booking = Booking.new
  end



  # def new
  #   @room = Room.new
  # end

  def create
    @room = Room.new(room_params)
    if @room.save!
      redirect_to room_path(@room)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to room_path(@room)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:capacity, :price_per_night, :hotel_id)
  end

end
