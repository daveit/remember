class VcatsController < ApplicationController
  before_action :set_vcat, only: [:show, :edit, :update, :destroy]

  # GET /vcats
  # GET /vcats.json
  def index
    @vcats = Vcat.all
  end

  # GET /vcats/1
  # GET /vcats/1.json
  def show
  end

  # GET /vcats/new
  def new
    @vcat = Vcat.new
  end

  # GET /vcats/1/edit
  def edit
  end

  # POST /vcats
  # POST /vcats.json
  def create
    @vcat = Vcat.new(vcat_params)

    respond_to do |format|
      if @vcat.save
        format.html { redirect_to @vcat, notice: 'Vcat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vcat }
      else
        format.html { render action: 'new' }
        format.json { render json: @vcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vcats/1
  # PATCH/PUT /vcats/1.json
  def update
    respond_to do |format|
      if @vcat.update(vcat_params)
        format.html { redirect_to @vcat, notice: 'Vcat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vcats/1
  # DELETE /vcats/1.json
  def destroy
    @vcat.destroy
    respond_to do |format|
      format.html { redirect_to vcats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vcat
      @vcat = Vcat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vcat_params
      params.require(:vcat).permit(:name)
    end
end
