json.array!(@video_contents) do |video_content|
  json.extract! video_content, :id, :videoUrl, :createdBy, :script, :lastUpdated
  json.url video_content_url(video_content, format: :json)
end
