require 'omnisocial'

require 'rails'
require 'action_controller'

require 'omniauth/core'
require 'omniauth/oauth'
require 'bcrypt'

module Omnisocial
  class Engine < Rails::Engine
    
    config.to_prepare do
      ApplicationController.helper(Omnisocial::AuthHelper)
    end
    
    initializer 'omnisocial.load_middleware', :after=> :load_config_initializers do
      if Omnisocial.service_configs[:twitter]
        config.app_middleware.use ::OmniAuth::Strategies::Twitter,
          Omnisocial.service_configs[:twitter].app_key,
          Omnisocial.service_configs[:twitter].app_secret
      end

      if Omnisocial.service_configs[:facebook]
        config.app_middleware.use ::OmniAuth::Strategies::Facebook, 
          Omnisocial.service_configs[:facebook].app_key,
          Omnisocial.service_configs[:facebook].app_secret,
          Omnisocial.service_configs[:facebook].options
      end

      if Omnisocial.service_configs[:linked_in]
        config.app_middleware.use ::OmniAuth::Strategies::LinkedIn,
          Omnisocial.service_configs[:linked_in].app_key,
          Omnisocial.service_configs[:linked_in].app_secret
      end

    end
  end
end
