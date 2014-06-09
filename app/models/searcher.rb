class Searcher
  class_attribute :searcher
  self.searcher = Tweets
  attr_reader :results

  def initialize(search_term)
    @results = searcher.search(search_term).results
  end


end
