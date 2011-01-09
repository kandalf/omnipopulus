module Omnisocial
  module AuthHelper
    def auth_request_path(options = {})
      "/auth/#{options[:service]}"
    end

    def big_twitter_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Twitter'), :class => 'omnisocial-button twitter', :href => auth_request_path(:service => 'twitter'))
    end

    def big_facebook_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Facebook'), :class => 'omnisocial-button facebook', :href => auth_request_path(:service => 'facebook'))
    end

    def twitter_login_button
      content_tag(:a, image_tag('/images/omnisocial/signin_twitter.png', :alt => 'Sign in with Twitter'), :href => auth_request_path(:service => 'twitter'))
    end

    def facebook_login_button
      content_tag(:a, image_tag('/images/omnisocial/signin_facebook.png', :alt => 'Sign in with Facebook'), :href => auth_request_path(:service => 'facebook'))
    end
  end
end