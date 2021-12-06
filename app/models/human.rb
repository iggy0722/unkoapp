class Human < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
  belongs_to :user
  validates :name,    presence: true
  validates :type_id, numericality: { other_than: 1, message: "can't be blank" } 
end
