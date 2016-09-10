# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  tag_type   :integer
#  content    :string
#  page_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string
#

require 'rails_helper'

RSpec.describe Tag, type: :model do
end
