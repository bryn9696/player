class SportplayersController < ApplicationController
  before_action :set_sportplayer, only: %i[ show edit update destroy ]

  # GET /sportplayers or /sportplayers.json
  def index
    @sportplayers = Sportplayer.all
  end

  # GET /sportplayers/1 or /sportplayers/1.json
  def show
  end

  # GET /sportplayers/new
  def new
    @sportplayer = Sportplayer.new
  end

  # GET /sportplayers/1/edit
  def edit
  end

  # POST /sportplayers or /sportplayers.json
  def create
    @sportplayer = Sportplayer.new(sportplayer_params)

    respond_to do |format|
      if @sportplayer.save
        format.html { redirect_to sportplayer_url(@sportplayer), notice: "Sportplayer was successfully created." }
        format.json { render :show, status: :created, location: @sportplayer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sportplayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sportplayers/1 or /sportplayers/1.json
  def update
    respond_to do |format|
      if @sportplayer.update(sportplayer_params)
        format.html { redirect_to sportplayer_url(@sportplayer), notice: "Sportplayer was successfully updated." }
        format.json { render :show, status: :ok, location: @sportplayer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sportplayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sportplayers/1 or /sportplayers/1.json
  def destroy
    @sportplayer.destroy

    respond_to do |format|
      format.html { redirect_to sportplayers_url, notice: "Sportplayer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sportplayer
      @sportplayer = Sportplayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sportplayer_params
      params.require(:sportplayer).permit(:first_name, :last_name, :age, :ball_control, :short_passing, :dribbling, :running_with_the_ball, :crossing, :shooting, :progress)
    end
end
