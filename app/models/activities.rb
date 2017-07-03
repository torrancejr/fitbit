class Activities < ActiveRecord::Base
  has_many :user
  has_many :fit_data
end
