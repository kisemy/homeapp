class MorgagesController < ApplicationController
  before_action :set_morgage, only: %i[ show edit update destroy ]

  # GET /morgages or /morgages.json
  def index
    @morgages = Morgage.all
  end

  # GET /morgages/1 or /morgages/1.json
  def show
  end

  # GET /morgages/new
  def new
    @morgage = Morgage.new
  end

  # GET /morgages/1/edit
  def edit
  end

  # POST /morgages or /morgages.json
  def create
    @morgage = Morgage.new(morgage_params)

    respond_to do |format|
      if @morgage.save
        format.html { redirect_to @morgage, notice: "Morgage was successfully created." }
        format.json { render :show, status: :created, location: @morgage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @morgage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morgages/1 or /morgages/1.json
  def update
    respond_to do |format|
      if @morgage.update(morgage_params)
        format.html { redirect_to @morgage, notice: "Morgage was successfully updated." }
        format.json { render :show, status: :ok, location: @morgage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @morgage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morgages/1 or /morgages/1.json
  def destroy
    @morgage.destroy
    respond_to do |format|
      format.html { redirect_to morgages_url, notice: "Morgage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_morgage
      @morgage = Morgage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def morgage_params
      params.require(:morgage).permit(:Firstname, :Middlename, :Lastname, :Dateofbirth, :IDno, :Pinno, :Designation, :Jobgroup, :ministry, :department, :station, :Address, :Telephone, :Mobile, :Email, :Maritalstatus, :Amount)
    end
end
