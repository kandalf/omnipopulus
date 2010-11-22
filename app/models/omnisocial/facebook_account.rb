module Omnisocial
  class FacebookAccount < LoginAccount
    def assign_account_info(auth_hash)
      self.remote_account_id  = auth_hash['uid']
      self.login              = auth_hash['user_info']['nickname']
      self.name               = auth_hash['user_info']['name']
    end

    def account_url
      "http://facebook.com/#{self.login}"
    end

    def picture_url
      if self.login.include?('profile.php')
        "https://graph.facebook.com/#{self.login.gsub(/[^\d]/, '')}/picture?type=square"
      else
        "https://graph.facebook.com/#{self.login}/picture?type=square"
      end
    end
  end
end