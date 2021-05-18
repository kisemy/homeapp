class MloansController < ApplicationController
  before_action :set_mloan, only: %i[ show edit update destroy ]

  # GET /mloans or /mloans.json
  def index
    @mloans = Mloan.all
  end

  # GET /mloans/1 or /mloans/1.json
  def show
  end

  # GET /mloans/new
  def new
    @mloan = Mloan.new
  end

  # GET /mloans/1/edit
  def edit
  end

  # POST /mloans or /mloans.json
  def create
    @mloan = Mloan.new(mloan_params)

    respond_to do |format|
      if @mloan.save
        format.html { redirect_to @mloan, notice: "Mloan was successfully created." }
        format.json { render :show, status: :created, location: @mloan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mloan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mloans/1 or /mloans/1.json
  def update
    respond_to do |format|
      if @mloan.update(mloan_params)
        format.html { redirect_to @mloan, notice: "Mloan was successfully updated." }
        format.json { render :show, status: :ok, location: @mloan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mloan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mloans/1 or /mloans/1.json
  def destroy
    @mloan.destroy
    respond_to do |format|
      format.html { redirect_to mloans_url, notice: "Mloan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mloan
      @mloan = Mloan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mloan_params
      params.require(:mloan).permit(:Firstname, :Middlename, :Lastname, :Dateofbirth, :IDno, :Pinno, :Designation, :Jobgroup, :ministry, :department, :station, :Address, :Telephone, :Mobile, :E-mail, :Maritalstatus, :Amount)
    end
end
