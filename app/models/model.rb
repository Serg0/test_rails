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

class Model < ApplicationRecord
  include        ActiveModel::Validations
  validates_with ModelValidator

  has_many   :vehicles
  belongs_to :make
end
