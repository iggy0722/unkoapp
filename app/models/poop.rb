class Poop < ApplicationRecord
  belongs_to :humans

  validates :name,    presence: true
  validates :type_id, numericality: { other_than: 1, message: "can't be blank" }
end
