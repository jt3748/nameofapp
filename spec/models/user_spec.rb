require 'rails_helper'

#commented out in 6.4

# describe User do
#   let(:user) {User.create!(password:"password", email:"email@email.com")}
#
#   it "it is a valid email" do
#    expect(user.email).to eq "email@email.com"
#  end
#
#  it "it is a valid password" do
#   expect(user.password).to eq "password"
# end
#
# it "it is not valid without an email" do
# user.email = nil
#  expect(user).to_not be_valid
# end
# end

describe User, type: :model do
  it "should not validate users without an email address" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end
