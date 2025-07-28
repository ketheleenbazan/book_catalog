class ApplicationMailer < ActionMailer::Base
  #default sender address for all outgoing emails in the app.
  default from: "from@example.com"

  #specifies that all mailers will use the mailer layout file.
  layout "mailer"
end
