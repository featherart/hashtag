Rspec.configure do |config|
  config.around do |example|
    cached_searcher = Searcher.searcher
    example.run
    Searcher.seacher = cached_searcher
  end
end
