class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def sendOrder(arg)
    mail(:to => 'veontomo@yahoo.it', :subject => "Welcome to My Awesome Site!!!")
  end
end
