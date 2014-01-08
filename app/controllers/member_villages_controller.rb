class MemberVillagesController < ApplicationController
  before_action :set_member_village, only: [:show, :edit, :update, :destroy]

  # GET /member_villages
  # GET /member_villages.json
  def index
    @member_villages = MemberVillage.all
  end

  # GET /member_villages/1
  # GET /member_villages/1.json
  def show
  end

  # GET /member_villages/new
  def new
    @member_village = MemberVillage.new
  end

  # GET /member_villages/1/edit
  def edit
  end

  # POST /member_villages
  # POST /member_villages.json
  def create
    @member_village = MemberVillage.new(member_village_params)

    respond_to do |format|
      if @member_village.save
        format.html { redirect_to @member_village, notice: 'Member village was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member_village }
      else
        format.html { render action: 'new' }
        format.json { render json: @member_village.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_villages/1
  # PATCH/PUT /member_villages/1.json
  def update
    respond_to do |format|
      if @member_village.update(member_village_params)
        format.html { redirect_to @member_village, notice: 'Member village was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member_village.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_villages/1
  # DELETE /member_villages/1.json
  def destroy
    @member_village.destroy
    respond_to do |format|
      format.html { redirect_to member_villages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_village
      @member_village = MemberVillage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_village_params
      params.require(:member_village).permit(:name)
    end
end
