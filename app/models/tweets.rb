class Tweets

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_KEY"]
      config.consumer_secret     = ENV["TWITTER_SECRET"]
      config.access_token        = ENV["TWITTER_TOKEN"]
      config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
    end

    def self.tweet_fetch(name)
      @client.user_timeline(name)
    end

    def self.search(search_term)
      @client.search(search_term).take(15)
    end

    def self.results(search_term)
      @client.search(search_term).take(15)
    end
end
