class FakeTwitter
  def self.search(search_term)
    OpenStruct.new(results: @results[term])
  end

  def self.[]=(key, value)
    @results ||= {}
    @results[key] = value.map {|twitter_hash| Twitter::Status.new(twitter_hash.merge(id: 12345)) }

  end
end
