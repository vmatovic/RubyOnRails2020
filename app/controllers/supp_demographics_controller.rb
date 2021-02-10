class SuppDemographicsController < ApplicationController
  before_action :set_supp_demographic, only: [:show, :edit, :update, :destroy]

  # GET /supp_demographics
  # GET /supp_demographics.json
  def index
    @supp_demographics = SuppDemographic.all
  end

  # GET /supp_demographics/1
  # GET /supp_demographics/1.json
  def show
  end

  # GET /supp_demographics/new
  def new
    @supp_demographic = SuppDemographic.new
  end

  # GET /supp_demographics/1/edit
  def edit
  end

  # POST /supp_demographics
  # POST /supp_demographics.json
  def create
    @supp_demographic = SuppDemographic.new(supp_demographic_params)

    respond_to do |format|
      if @supp_demographic.save
        format.html { redirect_to @supp_demographic, notice: 'Supp demographic was successfully created.' }
        format.json { render :show, status: :created, location: @supp_demographic }
      else
        format.html { render :new }
        format.json { render json: @supp_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supp_demographics/1
  # PATCH/PUT /supp_demographics/1.json
  def update
    respond_to do |format|
      if @supp_demographic.update(supp_demographic_params)
        format.html { redirect_to @supp_demographic, notice: 'Supp demographic was successfully updated.' }
        format.json { render :show, status: :ok, location: @supp_demographic }
      else
        format.html { render :edit }
        format.json { render json: @supp_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supp_demographics/1
  # DELETE /supp_demographics/1.json
  def destroy
    @supp_demographic.destroy
    respond_to do |format|
      format.html { redirect_to supp_demographics_url, notice: 'Supp demographic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supp_demographic
      @supp_demographic = SuppDemographic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supp_demographic_params
      params.require(:supp_demographic).permit(:education, :household_size, :years_residence, :comment)
    end
end
