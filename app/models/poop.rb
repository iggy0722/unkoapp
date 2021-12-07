class Poop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :humans
  belongs_to :state
  belongs_to :weight

  validates :state_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :weight_id, numericality: { other_than: 1, message: "can't be blank" }
end
