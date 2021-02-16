class ManProdsController < ApplicationController
  before_action :set_man_prod, only: [:show, :edit, :update, :destroy]

  # GET /man_prods
  # GET /man_prods.json
  def index
    @man_prods = ManProd.all
  end

  # GET /man_prods/1
  # GET /man_prods/1.json
  def show
  end

  # GET /man_prods/new
  def new
    @man_prod = ManProd.new
  end

  # GET /man_prods/1/edit
  def edit
  end

  # POST /man_prods
  # POST /man_prods.json
  def create
    @man_prod = ManProd.new(man_prod_params)

    respond_to do |format|
      if @man_prod.save
        format.html { redirect_to @man_prod, notice: 'Man prod was successfully created.' }
        format.json { render :show, status: :created, location: @man_prod }
      else
        format.html { render :new }
        format.json { render json: @man_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /man_prods/1
  # PATCH/PUT /man_prods/1.json
  def update
    respond_to do |format|
      if @man_prod.update(man_prod_params)
        format.html { redirect_to @man_prod, notice: 'Man prod was successfully updated.' }
        format.json { render :show, status: :ok, location: @man_prod }
      else
        format.html { render :edit }
        format.json { render json: @man_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /man_prods/1
  # DELETE /man_prods/1.json
  def destroy
    @man_prod.destroy
    respond_to do |format|
      format.html { redirect_to man_prods_url, notice: 'Man prod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_man_prod
      @man_prod = ManProd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def man_prod_params
      params.require(:man_prod).permit(:manufacturer_id, :product_id)
    end
end
