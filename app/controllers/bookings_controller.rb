class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookins
  # GET /bookins.json
  def index
    @bookings = Booking.all
  end

  # GET /bookins/1
  # GET /bookins/1.json
  def show
  end

  # GET /bookins/new
  def new
    @booking = Booking.new
  end

  # GET /bookins/1/edit
  def edit
  end

  # POST /bookins
  # POST /bookins.json
  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookins/1
  # PATCH/PUT /bookins/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookins/1
  # DELETE /bookins/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookins_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:tutor_id)
    end
end
