require 'rails/generators'

module Megalotto
    module Generators
        class InstallGenerator < Rails::Generators::Base
            source_root File.expand_path('templates', __dir__)
            desc 'Installs Megalotto.'

            def install
                template 'initializer.rb', 'config/initializers/megalotto.rb'
            end
        end
    end
end
