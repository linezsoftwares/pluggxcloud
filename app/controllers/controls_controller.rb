class ControlsController < ApplicationController
  before_action :load_device
  before_action :set_control, only: [:show, :edit, :update, :destroy]

  # GET /controls
  # GET /controls.json
  def index
    @controls = @device.controls
  end

  # GET /controls/1
  # GET /controls/1.json
  def show
    @control = @device.controls.find(params[:id])
  end

  # GET /controls/new
  def new
    @control = @device.controls.build
  end

  # GET /controls/1/edit
  def edit
  end

  # POST /controls
  # POST /controls.json
  def create
    @control = @device.controls.new(control_params)

    respond_to do |format|
      if @control.save
        format.html { redirect_to [@device,@control], notice: 'Control was successfully created.' }
        format.json { render action: 'show', status: :created, location: @control }
      else
        format.html { render action: 'new' }
        format.json { render json: @control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controls/1
  # PATCH/PUT /controls/1.json
  def update
    respond_to do |format|
      if @control.update(control_params)
        format.html { redirect_to [@device,@control], notice: 'Control was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controls/1
  # DELETE /controls/1.json
  def destroy
    @control.destroy
    respond_to do |format|
      format.html { redirect_to device_controls_url(@device) }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.

    def load_device
      @device = Device.find(params[:device_id])
    end

    def set_control
     / @control = @device.controls.find(params[:id])
    */
end
    # Never trust parameters from the scary internet, only allow the white list through.
    def control_params
      params.require(:control).permit(:cid, :name, :type, :status, :installation_type, :usage_time, :activity_count)
    end
end
