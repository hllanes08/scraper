# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :link do
    page_id ""
  end

end
