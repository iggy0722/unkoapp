class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '人間（大人）' },
    { id: 3, name: '人間（子供）' },
  ]
  include ActiveHash::Associations
  has_many :humans
  end