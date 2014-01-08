class MpaymentsController < ApplicationController
  before_action :set_mpayment, only: [:show, :edit, :update, :destroy]

  # GET /mpayments
  # GET /mpayments.json
  def index
    @mpayments = Mpayment.all
  end

  # GET /mpayments/1
  # GET /mpayments/1.json
  def show
  end

  # GET /mpayments/new
  def new
    @mpayment = Mpayment.new
  end

  # GET /mpayments/1/edit
  def edit
  end

  # POST /mpayments
  # POST /mpayments.json
  def create
    @mpayment = Mpayment.new(mpayment_params)

    respond_to do |format|
      if @mpayment.save
        format.html { redirect_to @mpayment, notice: 'Mpayment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mpayment }
      else
        format.html { render action: 'new' }
        format.json { render json: @mpayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mpayments/1
  # PATCH/PUT /mpayments/1.json
  def update
    respond_to do |format|
      if @mpayment.update(mpayment_params)
        format.html { redirect_to @mpayment, notice: 'Mpayment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mpayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mpayments/1
  # DELETE /mpayments/1.json
  def destroy
    @mpayment.destroy
    respond_to do |format|
      format.html { redirect_to mpayments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mpayment
      @mpayment = Mpayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mpayment_params
      params.require(:mpayment).permit(:pdate, :financial_to, :amount, :reference, :details, :MeansPayment_id, :Member_id)
    end
end
