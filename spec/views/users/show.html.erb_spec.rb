require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login_name => "Login Name",
      :name => "Name",
      :email => "Email",
      :salt => "Salt",
      :encrypted_password => "Encrypted Password",
      :public_name => "Public Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login Name/)
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Salt/)
    rendered.should match(/Encrypted Password/)
    rendered.should match(/Public Name/)
  end
end
