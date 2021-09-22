
class Picture < Jennifer::Model::Base
  table_name "picture"
  
  mapping({
    picture_id: Primary32,
    picturegallery_id: Int32,
    img: String,
    comment: String,
    inserted: Time
  }, false)

  belongs_to :picturegallery, PictureGallery, foreign: "picturegallery_id"
end