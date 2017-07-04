class UserStoresController < ApplicationController
  before_action :set_usto_user_store, only: [:show, :edit, :update, :destroy]

  # GET /usto_user_stores
  # GET /usto_user_stores.json
  def index
    @usto_user_stores = UstoUserStore.all
  end

  # GET /usto_user_stores/1
  # GET /usto_user_stores/1.json
  def show
  end

  # GET /usto_user_stores/new
  def new
    @usto_user_store = UstoUserStore.new
  end

  # GET /usto_user_stores/1/edit
  def edit
  end

  # POST /usto_user_stores
  # POST /usto_user_stores.json
  def create
    @usto_user_store = UstoUserStore.new(usto_user_store_params)

    respond_to do |format|
      if @usto_user_store.save
        format.html { redirect_to @usto_user_store, notice: 'Usto user store was successfully created.' }
        format.json { render :show, status: :created, location: @usto_user_store }
      else
        format.html { render :new }
        format.json { render json: @usto_user_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usto_user_stores/1
  # PATCH/PUT /usto_user_stores/1.json
  def update
    respond_to do |format|
      if @usto_user_store.update(usto_user_store_params)
        format.html { redirect_to @usto_user_store, notice: 'Usto user store was successfully updated.' }
        format.json { render :show, status: :ok, location: @usto_user_store }
      else
        format.html { render :edit }
        format.json { render json: @usto_user_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usto_user_stores/1
  # DELETE /usto_user_stores/1.json
  def destroy
    @usto_user_store.destroy
    respond_to do |format|
      format.html { redirect_to usto_user_stores_url, notice: 'Usto user store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usto_user_store
      @usto_user_store = UstoUserStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usto_user_store_params
      params.require(:usto_user_store).permit(:usto_id, :usto_user_id, :usto_stor_id)
    end
end
