class Micropost < ActiveRecord::Base
  belongs_to :user
  #それぞれの投稿は特定の一人のユーザーのものである。
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
