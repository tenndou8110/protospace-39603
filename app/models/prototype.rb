class Prototype < ApplicationRecord
  # PrototypeモデルとUserモデルの多対1の関係を設定
  belongs_to :user
  has_one_attached :image

  # プロトタイプの名称は必須
  validates :title, presence: true

  # キャッチコピーは必須
  validates :catch_copy, presence: true

  # コンセプトは必須
  validates :concept, presence: true

  # 画像は必須
  validates :image, presence: true
end