Rails.configuration.stripe = {
  :_publishable_key => Rails.application.credentials.stripe.fetch(:publishable_key),
  :_secret_key => Rails.application.credentials.stripe.fetch(:secret_key)
}

Stipe.api_key = Rails.configuration.stripe[:_secret_key]