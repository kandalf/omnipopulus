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
      content_tag(:a, content_tag(:img, :src => '/images/omnisocial/signin_twitter.png', :alt => 'Sign in with Twitter'), :href => auth_request_path(:service => 'twitter'))
    end
    
    def facebook_login_button
      content_tag(:a, content_tag(:img, :src => '/images/omnisocial/signin_facebook.png', :alt => 'Sign in with Facebook'), :href => auth_request_path(:service => 'facebook'))
    end

    def linkedin_login_button
      content_tag(:a, content_tag(:img, :src => '/images/omnisocial/signin_linked_in.png', :alt => 'Sign in with LinkeIn'), :href => auth_request_path(:service => 'linked_in'))
    end

    def big_facebook_login_button
      content_tag(:a, content_tag(:span, 'Sign in with LinkedIn'), :class => 'omnisocial-button linkedin', :href => auth_request_path(:service => 'linked_in'))
    end

  end
end
