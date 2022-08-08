class PurchasesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @product = Product.find(params[:product_id])
    @purchase.product = @product
    @purchase.user = current_user
    if @purchase.save
      redirect_to dashboard_path(current_user)
    else
      render :new
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:delivery_address, :message)
  end
end
