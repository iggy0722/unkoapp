class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '人間（成体）' },
    { id: 3, name: '人間（幼体）' },
    { id: 4, name: '犬' },
    { id: 5, name: '猫' },
    { id: 6, name: '爬虫類' },
    { id: 7, name: '鳥' },
    { id: 8, name: '魚' }
  ]
  include ActiveHash::Associations
  has_many :humans
end
