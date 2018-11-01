class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :body, :tag_ids, :archived, :photo

  def photo
    #variant = object.photo.variant(resize: "100x100")
    #rails_representation_url(variant, only_path: true)
    rails_blob_url(object.photo)
  end
end
