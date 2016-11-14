class BuisnessUnitsController < ApplicationController
  before_action :set_buisness_unit, only: [:show, :edit, :update, :destroy]

  # GET /buisness_units
  # GET /buisness_units.json
  def index
    @buisness_units = BuisnessUnit.all
  end

  # GET /buisness_units/1
  # GET /buisness_units/1.json
  def show
  end

  # GET /buisness_units/new
  def new
    @buisness_unit = BuisnessUnit.new
  end

  # GET /buisness_units/1/edit
  def edit
  end

  # POST /buisness_units
  # POST /buisness_units.json
  def create
    @buisness_unit = BuisnessUnit.new(buisness_unit_params)

    respond_to do |format|
      if @buisness_unit.save
        format.html { redirect_to @buisness_unit, notice: 'Buisness unit was successfully created.' }
        format.json { render :show, status: :created, location: @buisness_unit }
      else
        format.html { render :new }
        format.json { render json: @buisness_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buisness_units/1
  # PATCH/PUT /buisness_units/1.json
  def update
    respond_to do |format|
      if @buisness_unit.update(buisness_unit_params)
        format.html { redirect_to @buisness_unit, notice: 'Buisness unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @buisness_unit }
      else
        format.html { render :edit }
        format.json { render json: @buisness_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buisness_units/1
  # DELETE /buisness_units/1.json
  def destroy
    @buisness_unit.destroy
    respond_to do |format|
      format.html { redirect_to buisness_units_url, notice: 'Buisness unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buisness_unit
      @buisness_unit = BuisnessUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buisness_unit_params
      params.require(:buisness_unit).permit(:title)
    end
end
