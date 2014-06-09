class Searcher
  attr_reader :results

  def initialize(search_term)
    @results = Tweets.search(search_term).length
  end


end
