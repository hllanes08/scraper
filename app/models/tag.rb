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
end
