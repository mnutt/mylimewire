class User < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_presence_of :username, :secret
  
  def self.authenticate(username, secret)
    user = User.find_by_username(username)
    return user if user.nil?
    raise "Not authenticated" unless user.secret == secret
    user
  end

  def url
    url = "http://#{self.ip}:#{port}/"
  end
end
