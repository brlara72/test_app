class User < ActiveRecord::Base
  attr_accessible :dob, :email, :encrypted_password, :login_name, :name, :public_name, :salt
end
