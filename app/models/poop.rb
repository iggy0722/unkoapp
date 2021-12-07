class Poop < ApplicationRecord
  belongs_to :humans

  validates :state_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :weight_id, numericality: { other_than: 1, message: "can't be blank" }
end
