class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(order)
    @user = order.name
    @url  = "http://www.spizzicaluna.com"
    mail(:to => @user, :subject => "Benvenuto nel Mondo Spizzicaluna!")
  end
end
