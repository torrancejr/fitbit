class User < ActiveRecord::Base
  has_one :profile
  has_many :activities
  has_many :fit_data

  def self.from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.uid = uid
      user.provider = provider
      user.timezone = auth.info.timezone
      user.access_token =  auth.credentials.token
      user.refresh_token = auth.credentials.refresh_token
      user.expires_at = Time.at(auth.credentials.expires_at)
      user.save

    end
  end
end
