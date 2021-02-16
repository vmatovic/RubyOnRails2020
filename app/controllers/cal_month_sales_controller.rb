class CalMonthSalesController < ApplicationController
  before_action :set_cal_month_sale, only: [:show, :edit, :update, :destroy]
  before_action :is_it_admin
  # GET /cal_month_sales
  # GET /cal_month_sales.json
  def index
    @cal_month_sales = CalMonthSale.all
  end

  # GET /cal_month_sales/1
  # GET /cal_month_sales/1.json
  def show
  end

  # GET /cal_month_sales/new
  def new
    @cal_month_sale = CalMonthSale.new
  end

  # GET /cal_month_sales/1/edit
  def edit
  end

  # POST /cal_month_sales
  # POST /cal_month_sales.json
  def create
    @cal_month_sale = CalMonthSale.new(cal_month_sale_params)

    respond_to do |format|
      if @cal_month_sale.save
        format.html { redirect_to @cal_month_sale, notice: 'Cal month sale was successfully created.' }
        format.json { render :show, status: :created, location: @cal_month_sale }
      else
        format.html { render :new }
        format.json { render json: @cal_month_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cal_month_sales/1
  # PATCH/PUT /cal_month_sales/1.json
  def update
    respond_to do |format|
      if @cal_month_sale.update(cal_month_sale_params)
        format.html { redirect_to @cal_month_sale, notice: 'Cal month sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @cal_month_sale }
      else
        format.html { render :edit }
        format.json { render json: @cal_month_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cal_month_sales/1
  # DELETE /cal_month_sales/1.json
  def destroy
    @cal_month_sale.destroy
    respond_to do |format|
      format.html { redirect_to cal_month_sales_url, notice: 'Cal month sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cal_month_sale
      @cal_month_sale = CalMonthSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cal_month_sale_params
      params.require(:cal_month_sale).permit(:calendar_month_desc, :dollars)
    end
end
