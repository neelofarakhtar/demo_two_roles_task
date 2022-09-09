class AdminMailer < Devise::Mailer
	 default from: 'admin@gmail.com'
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    mail(to: 'admin@gmail.com', subject: 'New user awaiting admin approval')
  end

   def new_user_received_email(email)
    # debugger
     @user = email
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user, subject: 'Recieved email')
  end

end
