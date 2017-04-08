# == Schema Information
#
# Table name: clubs
#
#  id          :integer          not null, primary key
#  nombre      :string
#  desc        :text
#  lider       :integer
#  publico     :boolean
#  cupoabierto :boolean
#  portada     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :club do
    nombre "MyString"
    desc "MyText"
    lider 1
    publico false
    cupoabierto false
    portada "MyString"
  end
end
