class CalTimesController < ApplicationController
  before_action :set_cal_time, only: [:show, :edit, :update, :destroy]

  # GET /cal_times
  # GET /cal_times.json
  def index
    @cal_times = CalTime.all
  end

  # GET /cal_times/1
  # GET /cal_times/1.json
  def show
  end

  # GET /cal_times/new
  def new
    @cal_time = CalTime.new
  end

  # GET /cal_times/1/edit
  def edit
  end

  # POST /cal_times
  # POST /cal_times.json
  def create
    @cal_time = CalTime.new(cal_time_params)

    respond_to do |format|
      if @cal_time.save
        format.html { redirect_to @cal_time, notice: 'Cal time was successfully created.' }
        format.json { render :show, status: :created, location: @cal_time }
      else
        format.html { render :new }
        format.json { render json: @cal_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cal_times/1
  # PATCH/PUT /cal_times/1.json
  def update
    respond_to do |format|
      if @cal_time.update(cal_time_params)
        format.html { redirect_to @cal_time, notice: 'Cal time was successfully updated.' }
        format.json { render :show, status: :ok, location: @cal_time }
      else
        format.html { render :edit }
        format.json { render json: @cal_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cal_times/1
  # DELETE /cal_times/1.json
  def destroy
    @cal_time.destroy
    respond_to do |format|
      format.html { redirect_to cal_times_url, notice: 'Cal time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cal_time
      @cal_time = CalTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cal_time_params
      params.require(:cal_time).permit(:datefull, :day_number_in_week, :day_number_in_month, :calendar_week_number)
    end
end
