
class PictureGallery < Jennifer::Model::Base
  table_name "picturegallery"
  
  mapping({
    picturegallery_id: Primary32,
    event_id: Int32,
    name: String
  }, false)

  has_many :pictures, Picture, foreign: "picturegallery_id"
  belongs_to :event, Event, foreign: "event_id"
end