require 'rails_helper'

RSpec.describe User, type: :model do
  # Set up test data
  let(:user) { create(:user) }

  # Shoulda tests for email
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value("user@nimblist.com").for(:email) }
  it { should_not allow_value("usernimblist.com").for(:email) }

  # Shoulda tests for password
  it { should validate_presence_of(:password) }

  describe "invalid user" do
    let(:user_with_invalid_email) { build(:user, email: "") }
    let(:user_with_invalid_email_format) { build(:user, email: "invalid_format") }

    it "should be an invalid user due to blank email" do
      expect(user_with_invalid_email).to_not be_valid
    end

    it "should be an invalid user due to incorrectly formatted email address" do
      expect(user_with_invalid_email_format).to_not be_valid
    end
  end
end
