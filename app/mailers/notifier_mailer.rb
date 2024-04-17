class NotifierMailer < ApplicationMailer
  def new_account(recipient, content)
    mail(
      to: recipient,
      subject: "New account information",
      content_type: "text/html",
      body: "<html> <strong> Please go here : #{content} </strong></html>"
    )
  end
end
