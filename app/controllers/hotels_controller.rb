class HotelsController < ApplicationController

  before_action :set_hotel, only: [:show, :create]

  def index
    @hotels = Hotel.all

    #@room = Room.new
  end

  def show
    # Logique pour afficher les détails d'un hôtel spécifique
    @room = Room.new
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel= Hotel.new(hotel_params)
    @hotel.user = current_user
    if @hotel.save!
      redirect_to room_path(@hotel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :address)
  end


end
