class FitbitData < ActiveRecord::Base
  belongs_to :user
  belongs_to :activities
end
