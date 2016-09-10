# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

FactoryGirl.define do
  factory :page do
    url "MyString"
h1 "MyString"
h2 "MyString"
h3 "MyString"
  end

end
