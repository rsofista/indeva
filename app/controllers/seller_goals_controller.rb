class SellerGoalsController < ApplicationController
  before_action :set_seller_goal, only: [:show, :edit, :update, :destroy]

  # GET /seller_goals
  # GET /seller_goals.json
  def index
    @seller_goals = SellerGoal.all
  end

  # GET /seller_goals/1
  # GET /seller_goals/1.json
  def show
  end

  # GET /seller_goals/new
  def new
    @seller_goal = SellerGoal.new
  end

  # GET /seller_goals/1/edit
  def edit
  end

  # POST /seller_goals
  # POST /seller_goals.json
  def create
    @seller_goal = SellerGoal.new(seller_goal_params)

    respond_to do |format|
      if @seller_goal.save
        format.html { redirect_to @seller_goal, notice: 'Seller goal was successfully created.' }
        format.json { render :show, status: :created, location: @seller_goal }
      else
        format.html { render :new }
        format.json { render json: @seller_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_goals/1
  # PATCH/PUT /seller_goals/1.json
  def update
    respond_to do |format|
      if @seller_goal.update(seller_goal_params)
        format.html { redirect_to @seller_goal, notice: 'Seller goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_goal }
      else
        format.html { render :edit }
        format.json { render json: @seller_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_goals/1
  # DELETE /seller_goals/1.json
  def destroy
    @seller_goal.destroy
    respond_to do |format|
      format.html { redirect_to seller_goals_url, notice: 'Seller goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_goal
      @seller_goal = SellerGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_goal_params
      params.fetch(:seller_goal, {})
    end
end
