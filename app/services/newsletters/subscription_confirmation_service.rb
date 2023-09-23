module Newsletters
  class SubscriptionConfirmationService
    def initialize(email)
      @email = email
    end

    def call
      NewslettersMailer.subscription_confirmation_email(@email).deliver_now
    end
  end
end
