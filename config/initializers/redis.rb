if Rails.env.production?
  $redis = Redis.new(url: ENV["REDIS_URL"]) #this is for adding REDIS to heroku
else
  $redis = Redis.new(host: 'localhost', port: 6379)
end
# $redis.sadd("user_#{self.id}_friends", user.id)
