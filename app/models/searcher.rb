class Searcher
  attr_reader :results

  def initialize(search_term)
    @results = searcher.search(search_term).length
  end


end
