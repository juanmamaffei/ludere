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

class Club < ApplicationRecord
	has_many :posts
end
