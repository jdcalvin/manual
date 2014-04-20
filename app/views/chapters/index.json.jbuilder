json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :chapter_title, :chapter_number, :references
  json.url chapter_url(chapter, format: :json)
end
