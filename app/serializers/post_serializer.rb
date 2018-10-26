class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :tag_ids, :archived
end
