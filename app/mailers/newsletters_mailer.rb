class NewslettersMailer < ApplicationMailer
  default from: 'noreplay@micolet.com'

  def subscription_confirmation_email(email)
    mail(to: email, subject: I18n.t('newsletter.emails.subscription_confirmation.subject'))
  end
end
