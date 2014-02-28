json.array!(@favorite_web_things) do |favorite_web_thing|
  json.extract! favorite_web_thing, :id, :title, :body, :img_url, :url
  json.url favorite_web_thing_url(favorite_web_thing, format: :json)
end
