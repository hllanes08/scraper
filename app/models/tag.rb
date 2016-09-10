# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  type       :integer
#  content    :string
#  page_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string
#

class Tag < ActiveRecord::Base
   enum tag_type: {h1: 0 ,h2: 1,h3: 2, link: 4}
   belongs_to :page, class_name: 'Page'
end
