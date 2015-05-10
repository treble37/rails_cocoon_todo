# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :todos
  accepts_nested_attributes_for :todos, allow_destroy: true

  validates_presence_of :first_name
  validates_presence_of :last_name

end
