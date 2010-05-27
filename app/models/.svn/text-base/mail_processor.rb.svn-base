class MailProcessor < ActionMailer::Base
  def receive(email)
    # insert e-mail handling code
    recipients = Contact.get_forward_recipients(mail.to)
    forward_email = AlumniMailer.deliver_forward(email, recipients)
  end
end