require 'rails_helper'

RSpec.describe Human, type: :model do
  before do
    @human = FactoryBot.build(:human)
  end
  describe '子ユーザー登録' do
    context '子ユーザー登録ができる場合' do
      it '全てが存在していれば保存できる' do
        expect(@human).to be_valid
      end
    end
    context '子ユーザーが登録できない場合' do
      it 'nameが空の場合' do
        @human.name = ''
        @human.valid?
        expect(@human.errors.full_messages).to include("Name can't be blank")
      end
      it 'type_idが1の場合' do
        @human.type_id = '1'
        @human.valid?
        expect(@human.errors.full_messages).to include("Type can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @human.user = nil
        @human.valid?
        expect(@human.errors.full_messages).to include('User must exist')
      end
    end
  end
end
