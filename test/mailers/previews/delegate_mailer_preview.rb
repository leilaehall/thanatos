# Preview all emails at http://localhost:3000/rails/mailers/delegate_mailer
class DelegateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/delegate_mailer/confirm
  def confirm
    delegate = Delegate.last
    DelegateMailer.with(delegate: delegate).confirm
  end

end
