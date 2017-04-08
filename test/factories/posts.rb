# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  club_id    :integer
#  body       :text
#  alcance    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :post do
    user nil
    club nil
    body "MyText"
    alcance 1
  end
end
