class SlotsController < ApplicationController
  before_action :set_slot, only: [:show, :edit, :update, :destroy]

  # GET /slots
  # GET /slots.json
  def index
    #@slots = Slot.all
    #@user = User.find(session[:user_id])
    #@mba = Mba.find_by_user_id(@user[:id])

    @slots = Slot.joins(:mba).select("mbas.*,slots.*").where("slots.appointmenttype ='In Person'")

   # @slots=Slot.where(:mba_id =>@mba[:id])
    type = "On Phone"
    #@slots = Slot.where('DATE(?) > appointment ', Date.today )
     # @slots.each do |slot|
      #  id = slot[:mba_id]
       #  @mba = Mba.where(:id=>id)
      #end

    #find_by_school_mbatype("ross","alumni")
    respond_to do |format|
      format.json
      end
  end
def find
  @slots = Slot.find_by_school_mba_type(params[:school],params[:mbatype])
  respond_to do |format|
    format.json
  end
end
  # GET /slots/1
  # GET /slots/1.json
  def show
    #@slot=Slot.find_by_mba_id(session[:user_id])
    #@slots=Slot.find_all_by_mba_id(session[:user_id])
    @user = User.find(session[:user_id])
    @mba = Mba.find_by_user_id(@user[:id])

    @slots=Slot.where(:mba_id=>@mba[:id])

    #@slots.each do |slot|
      #@mbas = @slots.mba
      respond_to do |format|
        format.json
      end

     #end

  end

  # GET /slots/new
  def new
    #@user = User.find(session[:user_id])
    #@mba = Mba.find_by_user_id(session[:user_id])
    #booked_slot = false
    #slot_params[:booked]=false;
    @slot = Slot.new
    #@slot=@mba.slots.build(slot_params)
    #respond_to do |format|
     # if @slot.save
      #  format.html { redirect_to @slot, notice: 'Slot was successfully created.' }
       # format.json { render action: 'show', status: :created, location: @slot }
      #else
       # format.html { render action: 'new' }
        #format.json { render json: @slot.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # GET /slots/1/edit
  def edit
  end

  # POST /slots
  # POST /slots.json
  def create
    @user = User.find(session[:user_id])
    @mba = Mba.find_by_user_id(session[:user_id])
    slot_params[:booked]=false;
    @slot=@mba.slots.build(slot_params)
    #@slot = Slot.new(slot_params)

    respond_to do |format|
      if @slot.save
        format.html { redirect_to @slot, notice: 'Slot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @slot }
      else
        format.html { render action: 'new' }
        format.json { render json: @slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slots/1
  # PATCH/PUT /slots/1.json
  def update
    respond_to do |format|
      if @slot.update(slot_params)
        format.html { redirect_to @slot, notice: 'Slot was successfully updated.' }
        format.json {
          @mba = @slot.mba
          render json: @mba}
                     #head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slots/1
  # DELETE /slots/1.json
  def destroy
    @slot.destroy
    respond_to do |format|
      format.html { redirect_to slots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slot
      @slot = Slot.find_by_mba_id(session[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slot_params
      params.require(:slot).permit(:appointment, :appointmenttype, :mba_id, :booked)
    end
end
