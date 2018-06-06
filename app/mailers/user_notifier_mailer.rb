class UserNotifierMailer < ApplicationMailer

  default :from => 'sachin238@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(email_adddress)
    @email_adddress = email_adddress
    mail( :to => email_adddress,
          :subject => 'Thanks for signing up for our amazing app' )
  end
end
