json.array!(@event_publications) do |event_publication|
  json.extract! event_publication, :id, :basic_publication_id, :eventName, :eventCity, :year, :annalTitle, :volume, :issue, :series, :startingPage, :endingPage, :ISBN, :publisherName, :publisherCity
  json.url event_publication_url(event_publication, format: :json)
end
