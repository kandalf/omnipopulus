module Omnisocial
  module AuthHelper
    def twitter_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Twitter'), :class => 'twitter', :href => '/auth/twitter')
    end
  
    def facebook_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Facebook'), :class => 'facebook', :href => '/auth/facebook')
    end
  end
end