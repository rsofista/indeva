class GoalDaysController < ApplicationController
  before_action :set_gday_goal_day, only: [:show, :edit, :update, :destroy]

  # GET /gday_goal_days
  # GET /gday_goal_days.json
  def index
    @gday_goal_days = GdayGoalDay.all
  end

  # GET /gday_goal_days/1
  # GET /gday_goal_days/1.json
  def show
  end

  # GET /gday_goal_days/new
  def new
    @gday_goal_day = GdayGoalDay.new
  end

  # GET /gday_goal_days/1/edit
  def edit
  end

  # POST /gday_goal_days
  # POST /gday_goal_days.json
  def create
    @gday_goal_day = GdayGoalDay.new(gday_goal_day_params)

    respond_to do |format|
      if @gday_goal_day.save
        format.html { redirect_to @gday_goal_day, notice: 'Gday goal day was successfully created.' }
        format.json { render :show, status: :created, location: @gday_goal_day }
      else
        format.html { render :new }
        format.json { render json: @gday_goal_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gday_goal_days/1
  # PATCH/PUT /gday_goal_days/1.json
  def update
    respond_to do |format|
      if @gday_goal_day.update(gday_goal_day_params)
        format.html { redirect_to @gday_goal_day, notice: 'Gday goal day was successfully updated.' }
        format.json { render :show, status: :ok, location: @gday_goal_day }
      else
        format.html { render :edit }
        format.json { render json: @gday_goal_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gday_goal_days/1
  # DELETE /gday_goal_days/1.json
  def destroy
    @gday_goal_day.destroy
    respond_to do |format|
      format.html { redirect_to gday_goal_days_url, notice: 'Gday goal day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gday_goal_day
      @gday_goal_day = GdayGoalDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gday_goal_day_params
      params.require(:gday_goal_day).permit(:gday_id, :gday_goal_id, :gday_date, :gday_day, :gday_value)
    end
end
