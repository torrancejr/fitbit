Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, ENV['FITBIT_KEY'], ENV['FITBIT_SECRET'], scope: "profile activity sleep heartrate location nutrition settings social weight"
end
