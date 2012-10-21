class Account < ActiveRecord::Base  
  validates_presence_of :provider, :uid, :profile
  belongs_to :profile, inverse_of: :accounts

  def self.get attrs
    account_criteria = Account.where(provider: attrs[:provider], uid: attrs[:uid])
    account = account_criteria.first
    if not account.present?
      Account.transaction do
        profile = Profile.create!
        account = account_criteria.create! profile: profile
      end
    end
    account
  end

end
