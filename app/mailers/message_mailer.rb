class MessageMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delegate_mailer.confirm.subject
  #
  def send_message
    @recipient = params[:recipient]
    @message = params[:message]
    mail(to: @recipient, subject: 'You got a new message')
  end
end
