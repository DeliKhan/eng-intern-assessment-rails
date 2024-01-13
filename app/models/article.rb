class Article < ApplicationRecord
    def self.search(search_query)
        where("title LIKE ? OR content LIKE ?", "%#{search_query}%", "%#{search_query}%")
    end
end
