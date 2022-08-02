if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: 'trial_app', domain: 'https://jdh-auth-app-react.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: 'trial_app'
end
