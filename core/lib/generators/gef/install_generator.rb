# frozen_string_literal: true

require 'rails/generators'
require 'bundler'
require 'bundler/cli'

module Gef
  # @private
  class InstallGenerator < Rails::Generators::Base

    class_option :migrate, type: :boolean, default: true, banner: 'Run Gef migrations'

    def prepare_options
      @run_migrations = options[:migrate]
    end

    def install_migrations
      say_status :copying, "migrations"
      `rake railties:install:migrations`
    end

    def create_database
      say_status :creating, "database"
      rake 'db:create'
    end

    def run_migrations
      if @run_migrations
        say_status :running, "migrations"

        rake 'db:migrate VERBOSE=false'
      else
        say_status :skipping, "migrations (don't forget to run rake db:migrate)"
      end
    end

    def complete
      unless options[:quiet]
        puts "*" * 50
        puts "Solidus has been installed successfully. You're all ready to go!"
        puts " "
        puts "Enjoy!"
      end
    end
  end
end
