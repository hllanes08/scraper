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

require 'rails_helper'

RSpec.describe Tag, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
