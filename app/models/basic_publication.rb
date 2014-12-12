class BasicPublication < ActiveRecord::Base
  # relations
  belongs_to :profile
  has_one :event_publication
  has_one :scholarly_article  
  accepts_nested_attributes_for :event_publication
  accepts_nested_attributes_for :scholarly_article
  
  enum publication_type: [ :evento, :artigo, :capitulo ]
  
  # hooks
  after_save :only_one_extra_information
  
  private
    def only_one_extra_information
      articles = ScholarlyArticle.where(basic_publication_id:1)
      events = EventPublication.where(basic_publication_id:1)       
      if(events.size + articles.size > 1)
        
      end            
    end
  
end
