class TurfDetailsController < ApplicationController
  before_action :set_turf_detail, only: [:show, :edit, :update, :destroy]

  # GET /turf_details
  # GET /turf_details.json
  def index
    @turf_details = TurfDetail.all
  end

  # GET /turf_details/1
  # GET /turf_details/1.json
  def show
  end

  # GET /turf_details/new
  def new
    @turf_detail = TurfDetail.new
  end

  # GET /turf_details/1/edit
  def edit
  end

  # POST /turf_details
  # POST /turf_details.json
  def create
    @turf_detail = TurfDetail.new(turf_detail_params)

    respond_to do |format|
      if @turf_detail.save
        format.html { redirect_to @turf_detail, notice: 'Turf detail was successfully created.' }
        format.json { render :show, status: :created, location: @turf_detail }
      else
        format.html { render :new }
        format.json { render json: @turf_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turf_details/1
  # PATCH/PUT /turf_details/1.json
  def update
    respond_to do |format|
      if @turf_detail.update(turf_detail_params)
        format.html { redirect_to @turf_detail, notice: 'Turf detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @turf_detail }
      else
        format.html { render :edit }
        format.json { render json: @turf_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turf_details/1
  # DELETE /turf_details/1.json
  def destroy
    @turf_detail.destroy
    respond_to do |format|
      format.html { redirect_to turf_details_url, notice: 'Turf detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turf_detail
      @turf_detail = TurfDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turf_detail_params
      params.require(:turf_detail).permit(:title, :address)
    end
end
