require "test_helper"

describe Account do
  it 'creates a profile the first time an account is accessed' do
    account = Account.get(provider: 'twitter', uid: '1234')
    account.profile.wont_be_nil
    account.profile.must_equal Profile.first
  end

  it 'fetches the existing account and profile on subsequent attempts to get an account' do
    3.times { Account.get(provider: 'twitter', uid: '1234') }
    Profile.count.must_equal 1
    Account.count.must_equal 1
  end

end
