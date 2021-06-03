class PurchasesController < ActionController::Base
  def new
    @purchase = Purchase.new
    # @showing_time = ShowingTime.find(params[:showing_time_id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @showing_time = ShowingTime.find_by(params[:showing_time_id])
    if @purchase.save
      @purchase.showing_time.increment!(:seats_purchased)
      PurchaseMailer.purchase_receipt(@purchase).deliver_now
      redirect_to root_path
    else
      @errors = @purchase.errors.full_messages
      render 'purchases/new', locals: { purchase: @purchase }
    end
    
  end 

  private

  def purchase_params
    params.require(:purchase).permit(:first_name, :last_name, :email, :cc_number, :cc_exp_date) 
  end
end