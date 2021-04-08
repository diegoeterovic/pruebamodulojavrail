class BmTypesController < ApplicationController
  before_action :set_bm_type, only: %i[ show edit update destroy ]

  # GET /bm_types or /bm_types.json
  def index
    @bm_types = BmType.all
  end

  # GET /bm_types/1 or /bm_types/1.json
  def show
  end

  # GET /bm_types/new
  def new
    @bm_type = BmType.new
  end

  # GET /bm_types/1/edit
  def edit
  end

  # POST /bm_types or /bm_types.json
  def create
    @bm_type = BmType.new(bm_type_params)

    respond_to do |format|
      if @bm_type.save
        format.html { redirect_to @bm_type, notice: "Bm type was successfully created." }
        format.json { render :show, status: :created, location: @bm_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bm_types/1 or /bm_types/1.json
  def update
    respond_to do |format|
      if @bm_type.update(bm_type_params)
        format.html { redirect_to @bm_type, notice: "Bm type was successfully updated." }
        format.json { render :show, status: :ok, location: @bm_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bm_types/1 or /bm_types/1.json
  def destroy
    @bm_type.destroy
    respond_to do |format|
      format.html { redirect_to bm_types_url, notice: "Bm type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bm_type
      @bm_type = BmType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bm_type_params
      params.require(:bm_type).permit(:name)
    end
end
