class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def ordersaved(order)
    mail(:to => "veontomo@gmail.com", :subject => "la conferma da Spizzicaluna!")
  end
end
