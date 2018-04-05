# == Schema Information
#
# Table name: models
#
#  id         :integer          not null, primary key
#  label      :string           not null
#  make_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_models_on_make_id  (make_id)
#

require 'rails_helper'

RSpec.describe Model, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
