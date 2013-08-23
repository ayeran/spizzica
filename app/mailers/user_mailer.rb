class UserMailer < ActionMailer::Base
  default :from => "ordini@spizzicaluna.com"

  def sendOrder(order)
    @order = order
    @content = order.ordercontents
    mail(:to => order.email, :subject => "Spizzicaluna: il tuo ordine")
  end

    def notificationEmail(order)
    @order = order
    mail(:to => :from, :subject => "Nuovo ordine da " + order.name)
  end
end
