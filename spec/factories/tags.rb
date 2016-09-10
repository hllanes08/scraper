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

FactoryGirl.define do
  factory :tag do
    type 1
content "MyString"
page_id 1
  end

end
