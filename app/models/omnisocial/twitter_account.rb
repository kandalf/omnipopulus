module Omnisocial
  class TwitterAccount < LoginAccount
    def assign_account_info(auth_hash)
      self.remote_account_id  = auth_hash['uid']
      self.login              = auth_hash['user_info']['nickname']
      self.picture_url        = auth_hash['user_info']['image']
      self.name               = auth_hash['user_info']['name']
    end
  
    def account_url
      "http://twitter.com/#{self.login}"
    end
  end
end