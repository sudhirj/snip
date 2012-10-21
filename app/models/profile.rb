class Profile < ActiveRecord::Base
  has_many :accounts, inverse_of: :profile
end
