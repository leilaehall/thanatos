class DelegateMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delegate_mailer.confirm.subject
  #
  def confirm
    @delegate = params[:delegate]
    mail(to: @delegate.email, subject: 'You have been selected as a delegate')
  end
end
