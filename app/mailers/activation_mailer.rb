class ActivationMailer < ApplicationMailer
  default from: 'from@example.com'
  def send_confirm_to_user(user)
    @user = user
    mail(
        :subject => 'It’s work!', 
        :from        => 'shigashan@gmail.com',
        :return_path => 'shigashan@gmail.com',
        :to          => 'shigashan@gmail.com'
    )
  end
end
