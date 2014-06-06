class FakeTwitter
  def self.search(search_term)
    OpenStruct.new(results: [])
  end
end
