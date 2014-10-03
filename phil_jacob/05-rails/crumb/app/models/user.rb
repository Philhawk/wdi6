# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text
#  created_at      :datetime
#  updated_at      :datetime
#


class User < ActiveRecord::Base
	has_secure_password
	has_many :mealplans

	validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 3}
	validates :email, :presence => true, :uniqueness => true
end
