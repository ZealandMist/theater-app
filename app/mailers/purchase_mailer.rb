class PurchaseMailer < ActionMailer::Base
  def purchase_receipt(purchase)
    @purchase = purchase

    mail to: @purchase.email, 
         subject: "Receipt for #{@purchase.showing_times.movie.title}"
  end
end