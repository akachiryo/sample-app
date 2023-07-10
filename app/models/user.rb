class User < ApplicationRecord
  #存在性の検証
  validates :name, presence: true #validates(:name, presence: true)と同等
  validates :email, presence: true

  #長さの検証
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    #フォーマットの検証
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },      #フォーマットの検証
                    uniqueness: { case_sensitive: false}      #一意性の検証

end
