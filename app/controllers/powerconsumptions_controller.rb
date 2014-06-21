class PowerconsumptionsController < ApplicationController
  before_action :set_powerconsumption, only: [:show, :edit, :update, :destroy]

  # GET /powerconsumptions
  # GET /powerconsumptions.json
  def index
    @powerconsumptions = Powerconsumption.all
  end

  # GET /powerconsumptions/1
  # GET /powerconsumptions/1.json
  def show
  end

  # GET /powerconsumptions/new
  def new
    @powerconsumption = Powerconsumption.new
  end

  # GET /powerconsumptions/1/edit
  def edit
  end

  # POST /powerconsumptions
  # POST /powerconsumptions.json
  def create
    @powerconsumption = Powerconsumption.new(powerconsumption_params)

    respond_to do |format|
      if @powerconsumption.save
        format.html { redirect_to @powerconsumption, notice: 'Powerconsumption was successfully created.' }
        format.json { render action: 'show', status: :created, location: @powerconsumption }
      else
        format.html { render action: 'new' }
        format.json { render json: @powerconsumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powerconsumptions/1
  # PATCH/PUT /powerconsumptions/1.json
  def update
    respond_to do |format|
      if @powerconsumption.update(powerconsumption_params)
        format.html { redirect_to @powerconsumption, notice: 'Powerconsumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @powerconsumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powerconsumptions/1
  # DELETE /powerconsumptions/1.json
  def destroy
    @powerconsumption.destroy
    respond_to do |format|
      format.html { redirect_to powerconsumptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powerconsumption
      @powerconsumption = Powerconsumption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powerconsumption_params
      params.require(:powerconsumption).permit(:day, :data)
    end
end
