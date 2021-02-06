
require 'gef/config'

module Gef
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Gef
      engine_name 'gef'

      config.generators do |g|
        g.test_framework :rspec
      end

      initializer "gef.environment", before: :load_config_initializers do |app|
        app.config.gef = Gef::Config.environment
      end

      initializer "gef.core.checking_migrations", before: :load_config_initializers do |_app|
        Migrations.new(config, engine_name).check
      end
    end
  end
end
