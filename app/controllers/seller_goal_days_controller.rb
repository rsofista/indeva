class SellerGoalDaysController < ApplicationController
  before_action :set_sgda_seller_goal_day, only: [:show, :edit, :update, :destroy]

  # GET /sgda_seller_goal_days
  # GET /sgda_seller_goal_days.json
  def index
    @sgda_seller_goal_days = SgdaSellerGoalDay.all
  end

  # GET /sgda_seller_goal_days/1
  # GET /sgda_seller_goal_days/1.json
  def show
  end

  # GET /sgda_seller_goal_days/new
  def new
    @sgda_seller_goal_day = SgdaSellerGoalDay.new
  end

  # GET /sgda_seller_goal_days/1/edit
  def edit
  end

  # POST /sgda_seller_goal_days
  # POST /sgda_seller_goal_days.json
  def create
    @sgda_seller_goal_day = SgdaSellerGoalDay.new(sgda_seller_goal_day_params)

    respond_to do |format|
      if @sgda_seller_goal_day.save
        format.html { redirect_to @sgda_seller_goal_day, notice: 'Sgda seller goal day was successfully created.' }
        format.json { render :show, status: :created, location: @sgda_seller_goal_day }
      else
        format.html { render :new }
        format.json { render json: @sgda_seller_goal_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sgda_seller_goal_days/1
  # PATCH/PUT /sgda_seller_goal_days/1.json
  def update
    respond_to do |format|
      if @sgda_seller_goal_day.update(sgda_seller_goal_day_params)
        format.html { redirect_to @sgda_seller_goal_day, notice: 'Sgda seller goal day was successfully updated.' }
        format.json { render :show, status: :ok, location: @sgda_seller_goal_day }
      else
        format.html { render :edit }
        format.json { render json: @sgda_seller_goal_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sgda_seller_goal_days/1
  # DELETE /sgda_seller_goal_days/1.json
  def destroy
    @sgda_seller_goal_day.destroy
    respond_to do |format|
      format.html { redirect_to sgda_seller_goal_days_url, notice: 'Sgda seller goal day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sgda_seller_goal_day
      @sgda_seller_goal_day = SgdaSellerGoalDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sgda_seller_goal_day_params
      params.require(:sgda_seller_goal_day).permit(:sgda_id, :sgda_gday_id, :sgda_sell_id, :sgda_value)
    end
end
