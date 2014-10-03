# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  calorie    :string(255)
#  ingredient :string(255)
#  image      :text
#

class Recipe < ActiveRecord::Base
	has_and_belongs_to_many :mealplans
end
