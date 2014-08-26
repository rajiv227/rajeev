class MbasController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_mba, only: [:show, :edit, :update, :destroy]


  # GET /mbas
  # GET /mbas.json
  def index
    @mbas = Mba.all
  end

  # GET /mbas/1
  # GET /mbas/1.json
  def show
  end

  # GET /mbas/new
  def new
    #@user = User.find(session[:user_id])
    #@mba=@user.mbas.build
    @mba = Mba.new
  end

  # GET /mbas/1/edit
  def edit
  end

  # POST /mbas
  # POST /mbas.json
  def create
    p "Session Id in MBA"
    p session[:user_id]
    @user = User.find(session[:user_id])
   # @mba = Mba.create(name: params[:name],school: params[:school], user_id: @user.id)
    @mba=@user.build_mba(mba_params)

    respond_to do |format|
      if @mba.save
        format.html { redirect_to @mba, notice: 'Mba was successfully created.' }
        format.json { render json: nil, status: :ok }
      else
        format.html { render action: 'new' }
        format.json { render json: nil, status: :not_found }
      end
    end
  end

  # PATCH/PUT /mbas/1
  # PATCH/PUT /mbas/1.json
  def update
    respond_to do |format|
      if @mba.update(mba_params)
        format.html { redirect_to @mba, notice: 'Mba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbas/1
  # DELETE /mbas/1.json
  def destroy
    @mba.destroy
    respond_to do |format|
      format.html { redirect_to mbas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mba
      @mba = Mba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mba_params
      params.require(:mba).permit(:name, :school, :user_id,:mba_type, :company, :function)
    end
end
