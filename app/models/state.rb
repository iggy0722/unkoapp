class State < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '普通便' },
    { id: 3, name: 'コロコロ便' },
    { id: 4, name: 'カチカチ便' },
    { id: 5, name: 'ちょいカタ便' },
    { id: 6, name: 'ドロドロ便' },
    { id: 7, name: 'びちゃびちゃ' },
    { id: 8, name: '不消化便' }
  ]
  include ActiveHash::Associations
  has_many :poops
end
