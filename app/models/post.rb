class Post < ApplicationRecord
  serialize :tag_ids, Array
  validates :title, :body, :tag_ids, presence: true
end
