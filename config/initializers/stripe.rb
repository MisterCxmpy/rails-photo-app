Rails.configuration.stripe = {
  :publishable_key => Rails.application.credentials.stripe.fetch(:p_key),
  :secret_key => Rails.application.credentials.stripe.fetch(:s_key)
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]