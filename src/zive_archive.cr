
require "../config/initializers/*"
require "./models/*"
require "kilt/slang"
require "kemal"

get "/" do
  "Stay tuned. Just stay the fuck tuned."
end

get "/shots/random" do
  picture_count = Picture.all.count
  pic = Picture.all.eager_load(picturegallery: [:event]).offset(Random.rand(picture_count)).first!

  render "src/views/pictures/show.slang", "src/views/layout.slang"
end

Kemal.run
