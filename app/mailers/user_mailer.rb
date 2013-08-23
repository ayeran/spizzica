class UserMailer < ActionMailer::Base
  default :from => "ordini@spizzicaluna.com"

  def sendOrder(order)
    @order = order
    @content = order.ordercontents
    mail(:to => order.email, :subject => "Spizzicaluna: il tuo ordine")
  end

  def sendOrderNotification(order)
    @order = order
    mail(:to => "ordini@spizzicaluna.com", :subject => "Nuovo ordine da " + order.name)
  end
end
