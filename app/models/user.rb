class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets

  # メールアドレスは必須であり、Deviseのデフォルトのバリデーションを使用
  validates :email, presence: true

  # パスワードは必須であり、Deviseのデフォルトのバリデーションを使用
  validates :encrypted_password, presence: true

  # ユーザー名は必須
  validates :name, presence: true

  # プロフィールは必須
  validates :profile, presence: true

  # 所属は必須
  validates :occupation, presence: true

  # 役職は必須
  validates :position, presence: true

  validates :email, :encrypted_password, :name, :profile, :occupation, :position, presence: true
end
