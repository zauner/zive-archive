
class Event < Jennifer::Model::Base
  table_name "event"
  
  mapping({
    event_id: Primary32,
    name: String,
    dat: Time
  }, false)
end