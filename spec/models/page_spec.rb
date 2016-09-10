# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  url        :string
#  h1         :string
#  h2         :string
#  h3         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Page, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
