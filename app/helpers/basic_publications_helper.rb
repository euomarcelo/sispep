module BasicPublicationsHelper
  def publication_types_hlp    
    BasicPublication.publication_types.collect { |s| [s[0].humanize, s[0]]}
  end
end
