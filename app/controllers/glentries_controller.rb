class GlentriesController < ApplicationController
  before_action :set_glentry, only: [:show, :edit, :update, :destroy]
#before_action :set_per_page_session

#glentries_helper

  # GET /glentries
  # GET /glentries.json
  def index
    @glentries = Glentry.all
  end




    #def filter_glentries
      #@glentries = Glentry.get_glentries(params.merge(get_args))
    #end










  # GET /glentries/1
  # GET /glentries/1.json
  def show
  end

  # GET /glentries/new
  def new
    @glentry = Glentry.new
  end

  # GET /glentries/1/edit
  def edit
  end

  # POST /glentries
  # POST /glentries.json
  def create
    @glentry = Glentry.new(glentry_params)

    respond_to do |format|
      if @glentry.save
        format.html { redirect_to @glentry, notice: 'Glentry was successfully created.' }
        format.json { render :show, status: :created, location: @glentry }
      else
        format.html { render :new }
        format.json { render json: @glentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glentries/1
  # PATCH/PUT /glentries/1.json
  def update
    respond_to do |format|
      if @glentry.update(glentry_params)
        format.html { redirect_to @glentry, notice: 'Glentry was successfully updated.' }
        format.json { render :show, status: :ok, location: @glentry }
      else
        format.html { render :edit }
        format.json { render json: @glentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glentries/1
  # DELETE /glentries/1.json
  def destroy
    @glentry.destroy
    respond_to do |format|
      format.html { redirect_to glentries_url, notice: 'Glentry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glentry
      @glentry = Glentry.find(params[:id])
    end

#def get_intimation_message(action_key, glentry_ids)
                              # helper_methods = {archive: 'glentries_archived', destroy: 'glentries_deleted'}
   # helper_method = helper_methods[action_key.to_sym]
    #helper_method.present? ? send(helper_method, item_ids) : nil
 # end

  #def set_per_page_session
  #  session["#{controller_name}-per_page"] = params[:per] || session["#{controller_name}-per_page"] || 10
  #end

 # def sort_column
   # params[:sort] ||= 'glentry_description'
    #Item.column_names.include?(params[:sort]) ? params[:sort] : 'item_name'
#  end

  #def sort_direction
   # params[:direction] ||= 'asc'
  #  %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  #end



#def get_args
   # {per: @per_page, user: current_user, sort_column: sort_column, sort_direction: sort_direction, current_company: session['current_company'], company_id: get_company_id}
 #end



    # Only allow a list of trusted parameters through.
    def glentry_params
      params.require(:glentry).permit(:date, :description, :amount)
    end
end
