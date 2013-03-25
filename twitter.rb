require 'twitter'
load 'config.rb'

class Tweet
  
  attr_accessor :text
  
  def initialize( text )
    @text = text
  end

  def this()
    Twitter.configure do |config|
      config.consumer_key       = TwitterConstants::TWITTER_CONSUMER_KEY
      config.consumer_secret    = TwitterConstants::TWITTER_CONSUMER_SECRET
      config.oauth_token        = TwitterConstants::TWITTER_OAUTH_TOKEN
      config.oauth_token_secret = TwitterConstants::TWITTER_OAUTH_TOKEN_SECRET
    end
    Twitter.update( @text )
  end
end
