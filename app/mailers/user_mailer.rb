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



    def sendPrenotation(prenotation)
    @prenotation = prenotation
    mail(:to => prenotation.email, :subject => "Spizzicaluna: la tua prenotazione")
  end

  def sendPrenotationNotification(prenotation)
    @prenotation = prenotation
    mail(:to => prenotation.email, :subject => "Spizzicaluna: la prenotazione da " + prenotation.name)
  end
end
