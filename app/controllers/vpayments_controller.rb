class VpaymentsController < ApplicationController
  before_action :set_vpayment, only: [:show, :edit, :update, :destroy]

  # GET /vpayments
  # GET /vpayments.json
  def index
    @vpayments = Vpayment.all
  end

  # GET /vpayments/1
  # GET /vpayments/1.json
  def show
  end

  # GET /vpayments/new
  def new
    @vpayment = Vpayment.new
  end

  # GET /vpayments/1/edit
  def edit
  end

  # POST /vpayments
  # POST /vpayments.json
  def create
    @vpayment = Vpayment.new(vpayment_params)

    respond_to do |format|
      if @vpayment.save
        format.html { redirect_to @vpayment, notice: 'Vpayment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vpayment }
      else
        format.html { render action: 'new' }
        format.json { render json: @vpayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vpayments/1
  # PATCH/PUT /vpayments/1.json
  def update
    respond_to do |format|
      if @vpayment.update(vpayment_params)
        format.html { redirect_to @vpayment, notice: 'Vpayment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vpayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vpayments/1
  # DELETE /vpayments/1.json
  def destroy
    @vpayment.destroy
    respond_to do |format|
      format.html { redirect_to vpayments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vpayment
      @vpayment = Vpayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vpayment_params
      params.require(:vpayment).permit(:pdate, :financial_to, :amount, :reference, :details, :MeansPayment_id, :Village_id)
    end

end
