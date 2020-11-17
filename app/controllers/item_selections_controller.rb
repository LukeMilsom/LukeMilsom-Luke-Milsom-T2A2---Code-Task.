class ItemSelectionsController < ApplicationController
include CurrentCart
  before_action :set_item_selection, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:index, :create, :show]
  # GET /item_selections
  # GET /item_selections.json
  def index
    @item_selections = ItemSelection.all
  end

  # GET /item_selections/1
  # GET /item_selections/1.json
  def show
  end

  # GET /item_selections/new
  def new
    @item_selection = ItemSelection.new
  end

  # GET /item_selections/1/edit
  def edit
  end

  # POST /item_selections
  # POST /item_selections.json
  def create
    dev = Dev.find(params[:dev_id])
    @item_selection = @cart.add_dev(dev)

    respond_to do |format|
      if @item_selection.save
        format.html { redirect_to @item_selection, notice: 'Item added to cart.' }
        format.json { render :show, status: :created, location: @item_selection }
      else
        format.html { render :new }
        format.json { render json: @item_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_selections/1
  # PATCH/PUT /item_selections/1.json
  def update
    respond_to do |format|
      if @item_selection.update(item_selection_params)
        format.html { redirect_to @item_selection, notice: 'Item selection was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_selection }
      else
        format.html { render :edit }
        format.json { render json: @item_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_selections/1
  # DELETE /item_selections/1.json
  def destroy
    @cart = Cart.find(session[:cart_id])
    @item_selection.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Item selection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_selection
      @item_selection = ItemSelection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_selection_params
      params.require(:item_selection).permit(:dev_id)
    end
end
