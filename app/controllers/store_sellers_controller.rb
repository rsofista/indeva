class StoreSellersController < ApplicationController
  before_action :set_ssel_store_seller, only: [:show, :edit, :update, :destroy]

  # GET /ssel_store_sellers
  # GET /ssel_store_sellers.json
  def index
    @ssel_store_sellers = SselStoreSeller.all
  end

  # GET /ssel_store_sellers/1
  # GET /ssel_store_sellers/1.json
  def show
  end

  # GET /ssel_store_sellers/new
  def new
    @ssel_store_seller = SselStoreSeller.new
  end

  # GET /ssel_store_sellers/1/edit
  def edit
  end

  # POST /ssel_store_sellers
  # POST /ssel_store_sellers.json
  def create
    @ssel_store_seller = SselStoreSeller.new(ssel_store_seller_params)

    respond_to do |format|
      if @ssel_store_seller.save
        format.html { redirect_to @ssel_store_seller, notice: 'Ssel store seller was successfully created.' }
        format.json { render :show, status: :created, location: @ssel_store_seller }
      else
        format.html { render :new }
        format.json { render json: @ssel_store_seller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ssel_store_sellers/1
  # PATCH/PUT /ssel_store_sellers/1.json
  def update
    respond_to do |format|
      if @ssel_store_seller.update(ssel_store_seller_params)
        format.html { redirect_to @ssel_store_seller, notice: 'Ssel store seller was successfully updated.' }
        format.json { render :show, status: :ok, location: @ssel_store_seller }
      else
        format.html { render :edit }
        format.json { render json: @ssel_store_seller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ssel_store_sellers/1
  # DELETE /ssel_store_sellers/1.json
  def destroy
    @ssel_store_seller.destroy
    respond_to do |format|
      format.html { redirect_to ssel_store_sellers_url, notice: 'Ssel store seller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ssel_store_seller
      @ssel_store_seller = SselStoreSeller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ssel_store_seller_params
      params.require(:ssel_store_seller).permit(:ssel_id, :ssel_stor_id, :ssel_sell_id)
    end
end
