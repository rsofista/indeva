class StoreGoalsController < ApplicationController
  before_action :set_sgoa_store_goal, only: [:show, :edit, :update, :destroy]

  # GET /sgoa_store_goals
  # GET /sgoa_store_goals.json
  def index
    @sgoa_store_goals = SgoaStoreGoal.all
  end

  # GET /sgoa_store_goals/1
  # GET /sgoa_store_goals/1.json
  def show
  end

  # GET /sgoa_store_goals/new
  def new
    @sgoa_store_goal = SgoaStoreGoal.new
  end

  # GET /sgoa_store_goals/1/edit
  def edit
  end

  # POST /sgoa_store_goals
  # POST /sgoa_store_goals.json
  def create
    @sgoa_store_goal = SgoaStoreGoal.new(sgoa_store_goal_params)

    respond_to do |format|
      if @sgoa_store_goal.save
        format.html { redirect_to @sgoa_store_goal, notice: 'Sgoa store goal was successfully created.' }
        format.json { render :show, status: :created, location: @sgoa_store_goal }
      else
        format.html { render :new }
        format.json { render json: @sgoa_store_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sgoa_store_goals/1
  # PATCH/PUT /sgoa_store_goals/1.json
  def update
    respond_to do |format|
      if @sgoa_store_goal.update(sgoa_store_goal_params)
        format.html { redirect_to @sgoa_store_goal, notice: 'Sgoa store goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @sgoa_store_goal }
      else
        format.html { render :edit }
        format.json { render json: @sgoa_store_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sgoa_store_goals/1
  # DELETE /sgoa_store_goals/1.json
  def destroy
    @sgoa_store_goal.destroy
    respond_to do |format|
      format.html { redirect_to sgoa_store_goals_url, notice: 'Sgoa store goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sgoa_store_goal
      @sgoa_store_goal = SgoaStoreGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sgoa_store_goal_params
      params.require(:sgoa_store_goal).permit(:sgoa_id, :sgoa_goal_id, :sgoa_stor_id)
    end
end
