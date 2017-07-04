class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals
  # GET /goals.json
  def index
    @goals = current_user.goals
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal            = Goal.new(goal_params)
    @goal.user       = current_user
    @goal.start_date = params_start_date

    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: 'Goal goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = current_user.goals.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      return @goal_params if @goal_params

      @goal_params = params.require(:goal).permit(:value, :store_id, goal_days_attributes: [:id, :value, :day])
    end

    def params_start_date
      date_params = params.require(:goal).permit(:month_year)

      if date_params.has_key?('month_year(1i)') && date_params.has_key?('month_year(2i)')
        Date.new date_params['month_year(1i)'].to_i, date_params['month_year(2i)'].to_i, 2
      else
        nil
      end
    end
end
