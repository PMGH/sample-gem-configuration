require 'rails/generators'
require 'rails/generators/base'

module Megalotto
    module Generators
        class InstallGenerator < Rails::Generators::Base
            puts 'Running install generator...'
            source_root File.expand_path('templates', __dir__)
            desc 'This generator creates an initializer file at config/initializers/megalotto.rb'

            def create_initializer_file
                puts 'Creating initializer file at config/initializers/megalotto.rb'
                template 'initializer.rb', 'config/initializers/megalotto.rb'
            end
        end
    end
end
