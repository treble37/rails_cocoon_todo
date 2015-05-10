# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  description :string
#  due_date    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Todo < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :description

end
