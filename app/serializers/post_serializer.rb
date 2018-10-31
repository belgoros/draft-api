class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :body, :tag_ids, :archived, :photo

  def photo
    url_for(object.photo) if object.photo.attached?
  end
end
