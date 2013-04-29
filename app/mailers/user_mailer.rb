class UserMailer < ActionMailer::Base
  def sendOrder(arg)
    mail(:to => 'veontomo@yahoo.it', :from => "test@test.com", :subject => "Welcome to My Awesome Site!!!")
  end
end
