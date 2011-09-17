require 'rails/generators'
require 'rails/generators/migration'

module Omnisocial
  module Generators
    class OmnisocialGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc 'Creates an omnisocial initializer and migration, and copies image and CSS assets.'

      def self.source_root
        File.join(File.dirname(__FILE__), 'templates')
      end

      # Implement required interface for Rails::Generators::Migration (activerecord/lib/generators/active_record.rb)
      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end

      def create_migration_file
        migration_template 'migration.rb', 'db/migrate/create_omnisocial_tables.rb'
      end

      def copy_initializer
        template 'omnisocial.rb', 'config/initializers/omnisocial.rb'
      end

      def copy_user_model
        template 'user.rb', 'app/models/user.rb'
      end

      def show_readme
        readme 'README' if behavior == :invoke
      end
    end
  end
end
