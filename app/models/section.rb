# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  course_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Section < ActiveRecord::Base
# acts_as_list
  belongs_to :course
  has_many :contents
end
