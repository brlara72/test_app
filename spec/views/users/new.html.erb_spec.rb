require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :login_name => "MyString",
      :name => "MyString",
      :email => "MyString",
      :salt => "MyString",
      :encrypted_password => "MyString",
      :public_name => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_login_name", :name => "user[login_name]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_salt", :name => "user[salt]"
      assert_select "input#user_encrypted_password", :name => "user[encrypted_password]"
      assert_select "input#user_public_name", :name => "user[public_name]"
    end
  end
end
