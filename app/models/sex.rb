class Sex < ActiveHash::Base
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: '男性' },
      { id: 3, name: '女性' },
      { id: 4, name: 'その他' },
      { id: 5, name: '無回答' },
    ]
    include ActiveHash::Associations
    has_many :users
    end