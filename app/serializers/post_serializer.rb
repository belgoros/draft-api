class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :body, :tag_ids, :archived, :photo

  def photo
    if object.photo.attached?
      {
        url: rails_blob_url(object.photo),
        signed_id: object.photo.signed_id
      }
    end
  end
end
