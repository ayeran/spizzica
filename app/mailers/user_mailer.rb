class UserMailer < ActionMailer::Base
  default :from => "ordini@spizzicaluna.com"

  def sendOrder(order)
    @order = order
    @content = order.ordercontents
    mail(:to => order.email, :subject => "Spizzicaluna: il tuo ordine")
  end
end
