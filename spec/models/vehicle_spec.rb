# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  year       :integer
#  price      :decimal(10, 2)
#  make_id    :integer
#  model_id   :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  images     :json
#
# Indexes
#
#  index_vehicles_on_make_id   (make_id)
#  index_vehicles_on_model_id  (model_id)
#

require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
