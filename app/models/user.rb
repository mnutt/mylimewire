class User < ActiveRecord::Base
  def self.authenticate(host, secret)
    user = User.find_by_host(host)
    user.nil? or user.secret == secret
  end

  def url
    url = "http://#{self.ip}:#{port}/"
  end
end
