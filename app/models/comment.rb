class Comment < ApplicationRecord
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
end
