# == Schema Information
#
# Table name: makes
#
#  id         :integer          not null, primary key
#  label      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Make < ApplicationRecord
  has_many :vehicles
end
