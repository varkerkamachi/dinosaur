class UserMailer < ActionMailer::Base

  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
       @url  = "http://allmydinos.com/activate/#{user.activation_code}"
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Your account has been activated!'
    @url  = "http://allmydinos.com/"
  end
  
  protected

  def setup_email(user)
    @recipients  = "#{user.email}"
    @from        = "admin_email@gmail.com"
    @subject     = "allmydinos.com"
    @sent_on     = Time.now
    @user = user
  end

end
