class MeansPaymentsController < ApplicationController
  before_action :set_means_payment, only: [:show, :edit, :update, :destroy]

  # GET /means_payments
  # GET /means_payments.json
  def index
    @means_payments = MeansPayment.all
  end

  # GET /means_payments/1
  # GET /means_payments/1.json
  def show
  end

  # GET /means_payments/new
  def new
    @means_payment = MeansPayment.new
  end

  # GET /means_payments/1/edit
  def edit
  end

  # POST /means_payments
  # POST /means_payments.json
  def create
    @means_payment = MeansPayment.new(means_payment_params)

    respond_to do |format|
      if @means_payment.save
        format.html { redirect_to @means_payment, notice: 'Means payment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @means_payment }
      else
        format.html { render action: 'new' }
        format.json { render json: @means_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /means_payments/1
  # PATCH/PUT /means_payments/1.json
  def update
    respond_to do |format|
      if @means_payment.update(means_payment_params)
        format.html { redirect_to @means_payment, notice: 'Means payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @means_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /means_payments/1
  # DELETE /means_payments/1.json
  def destroy
    @means_payment.destroy
    respond_to do |format|
      format.html { redirect_to means_payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_means_payment
      @means_payment = MeansPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def means_payment_params
      params.require(:means_payment).permit(:name)
    end
end
