json.array!(@sections) do |section|
  json.extract! section, :id, :section_title, :section_number
  json.url section_url(section, format: :json)
end
