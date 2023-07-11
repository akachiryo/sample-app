class User < ApplicationRecord
  #存在性の検証
  validates :name, presence: true #validates(:name, presence: true)と同等
  validates :email, presence: true

  before_save { self.email = email.downcase }                 #保存前に全て小文字にする
  validates :name,  presence: true, length: { maximum: 50 }   #長さの検証
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    #フォーマットの検証
  validates :email, presence: true, length: { maximum: 255 }, #長さの検証
                    format: { with: VALID_EMAIL_REGEX },      #フォーマットの検証
                    uniqueness: true                          #一意性の検証
end
