class ComTypesController < ApplicationController
  before_action :set_com_type, only: [:show, :edit, :update, :destroy]

  # GET /com_types
  # GET /com_types.json
  def index
    @com_types = ComType.all
  end

  # GET /com_types/1
  # GET /com_types/1.json
  def show
  end

  # GET /com_types/new
  def new
    @com_type = ComType.new
  end

  # GET /com_types/1/edit
  def edit
  end

  # POST /com_types
  # POST /com_types.json
  def create
    @com_type = ComType.new(com_type_params)

    respond_to do |format|
      if @com_type.save
        format.html { redirect_to @com_type, notice: 'Com type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @com_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @com_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /com_types/1
  # PATCH/PUT /com_types/1.json
  def update
    respond_to do |format|
      if @com_type.update(com_type_params)
        format.html { redirect_to @com_type, notice: 'Com type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @com_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /com_types/1
  # DELETE /com_types/1.json
  def destroy
    @com_type.destroy
    respond_to do |format|
      format.html { redirect_to com_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_com_type
      @com_type = ComType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def com_type_params
      params.require(:com_type).permit(:name)
    end
end
