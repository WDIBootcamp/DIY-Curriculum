# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  author_id   :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Course < ActiveRecord::Base

  # belongs_to :user
  belongs_to :category
  has_many :sections, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :enrollments
  has_many :users, through: :enrollments

end
