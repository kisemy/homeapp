class MgloansController < ApplicationController
  before_action :set_mgloan, only: %i[ show edit update destroy ]

  # GET /mgloans or /mgloans.json
  def index
    @mgloans = Mgloan.all
  end

  # GET /mgloans/1 or /mgloans/1.json
  def show
  end

  # GET /mgloans/new
  def new
    @mgloan = Mgloan.new
  end

  # GET /mgloans/1/edit
  def edit
  end

  # POST /mgloans or /mgloans.json
  def create
    @mgloan = Mgloan.new(mgloan_params)

    respond_to do |format|
      if @mgloan.save
        format.html { redirect_to @mgloan, notice: "Mgloan was successfully created." }
        format.json { render :show, status: :created, location: @mgloan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mgloan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mgloans/1 or /mgloans/1.json
  def update
    respond_to do |format|
      if @mgloan.update(mgloan_params)
        format.html { redirect_to @mgloan, notice: "Mgloan was successfully updated." }
        format.json { render :show, status: :ok, location: @mgloan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mgloan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mgloans/1 or /mgloans/1.json
  def destroy
    @mgloan.destroy
    respond_to do |format|
      format.html { redirect_to mgloans_url, notice: "Mgloan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mgloan
      @mgloan = Mgloan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mgloan_params
      params.require(:mgloan).permit(:Firstname, :Middlename, :Lastname, :Dateofbirth, :IDno, :Pinno, :Designation, :Jobgroup, :ministry, :department, :station, :Address, :Telephone, :Mobile, :E-mail, :Maritalstatus, :Amount)
    end
end
