class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :body, :tag_ids, :archived, :photo

  def photo
    Rails.application.routes.url_helpers.rails_blob_path(object.photo, only_path: true) if object.photo.attached?
  end
end
