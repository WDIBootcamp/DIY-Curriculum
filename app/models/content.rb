# == Schema Information
#
# Table name: contents
#
#  id             :integer          not null, primary key
#  source_url     :string(255)
#  text           :text
#  section_id     :integer
#  created_at     :datetime
#  updated_at     :datetime
#  res_title      :string(255)
#  res_author     :string(255)
#  res_domain     :string(255)
#  res_word_count :integer
#  res_excerpt    :text
#  res_content    :text
#

class Content < ActiveRecord::Base

  belongs_to :section
  
  def course_id
    section.course.id
  end
end
