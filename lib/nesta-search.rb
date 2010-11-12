module Nesta
  class Page
    def related_articles
      if keywords
        index = Ferret::Index::Index.new
        Page.find_articles.each do |article|
          index << {:heading => article.heading, :href => article.abspath, :summary => article.summary, :body => article.body}
        end
        results = {}
        keywords.each do |keyword|
          index.search_each(keyword) do |id, score|
            results[id] ? results[id] = results[id] + score : results[id] = score
          end
        end
        related_article_links = []
        results.each do |key, value|
          related_article_links << Page.find_by_path(index[key]['href']) unless abspath == index[key]['href']
        end
        related_article_links
      else
        []
      end
    end
  end
end
