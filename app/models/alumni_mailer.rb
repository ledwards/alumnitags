class AlumniMailer < ActionMailer::Base
  
  def forward(message, forward_recipients)
    subject    message.subject
    recipients 'alumnitags@swccgonline.com'
    bcc        forward_recipients
    from       message.from
    sent_on    Time.now
    
    body       :body_text => message.body
    
    # need to preserve attachments, HTML formatting, multi-part, etc.
    # send tags to body
    # fix body duplicate problem
  end

end
