class DevsController < ApplicationController
  before_action :set_dev, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /devs
  # GET /devs.json
  def index
    @devs = Dev.all.order("created_at DESC")
    def body_class
      @body_class || ''
    end
  end

  # GET /devs/1
  # GET /devs/1.json
  def show

  end

  # GET /devs/new
  def new
    @dev = current_user.devs.build
  end

  # GET /devs/1/edit
  def edit
  end

  # POST /devs
  # POST /devs.json
  def create
    @dev = current_user.devs.build(dev_params)

    respond_to do |format|
      if @dev.save
        format.html { redirect_to @dev, notice: 'Dev was successfully created.' }
        format.json { render :show, status: :created, location: @dev }
      else
        format.html { render :new }
        format.json { render json: @dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devs/1
  # PATCH/PUT /devs/1.json
  def update
    respond_to do |format|
      if @dev.update(dev_params)
        format.html { redirect_to @dev, notice: 'Dev was successfully updated.' }
        format.json { render :show, status: :ok, location: @dev }
      else
        format.html { render :edit }
        format.json { render json: @dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devs/1
  # DELETE /devs/1.json
  def destroy
    @dev.destroy
    respond_to do |format|
      format.html { redirect_to devs_url, notice: 'Dev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev
      @dev = Dev.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dev_params
      params.require(:dev).permit(:dev_type, :service_type, :language_type, :listing_name, :summary, :location_town, :location_country, :price, :image)
    end
end
