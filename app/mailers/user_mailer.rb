class UserMailer < ActionMailer::Base
  default :from => "ordini@spizzicaluna.com"

  def sendOrder(order)
    @order = order
    @content = order.ordercontents
    mail(:to => order.email, :subject => "Il tuo ordine dalla Spizzicaluna!")
  end
end
