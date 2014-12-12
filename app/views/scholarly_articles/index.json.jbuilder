json.array!(@scholarly_articles) do |scholarly_article|
  json.extract! scholarly_article, :id, :basic_publication, :ISSN, :volume, :issue, :series, :startingPage, :endingPage
  json.url scholarly_article_url(scholarly_article, format: :json)
end
