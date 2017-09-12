require 'pry'

def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  new_tweet = tweet.collect {|word| dictionary.keys.include?(word.downcase) ? dictionary[word.downcase] : word}
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    modified_tweet = word_substituter(tweet)
    modified_tweet.length > 140 ? modified_tweet[1..140] : modified_tweet
  else
    tweet
  end
end
