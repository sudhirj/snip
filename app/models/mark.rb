class Mark < ActiveRecord::Base
  has_one :link
  belongs_to :account
  validates_presence_of :link, :account
end
