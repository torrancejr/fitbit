context 'with valid fitbit credentials' do
  # this should actually be created in a factory
  let(:provider) { :fitbit }
  let(:oauth) { OmniAuth::AuthHash.new provider: provider, uid: '1234' }
  before do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[provider] = oauth
  end

  it 'creates a new user' do
    expect { visit "/users/auth/#{provider}" }.to change(User, :count).by(1)
  end
end
