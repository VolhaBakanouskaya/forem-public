class DiscussionLock < ApplicationRecord
  belongs_to :article
  belongs_to :locking_user, class_name: "User"

  validates :article_id, presence: true, uniqueness: true
  validates :locking_user_id, presence: true
end