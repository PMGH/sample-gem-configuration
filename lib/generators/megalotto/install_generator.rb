require 'rails/generators'
require 'rails/generators/base'

module Megalotto
    module Generators
        class InstallGenerator < Rails::Generators::Base
            puts 'install generator class accessed'
            # source_root File.expand_path('templates', __dir__)
            # desc 'This generator creates an initializer file at config/initializers/megalotto.rb'

            def create_initializer_file
                puts 'install generator create_initializer_file method accessed'
                # template 'initializer.rb', 'config/initializers/megalotto.rb'
            end
        end
    end
end
