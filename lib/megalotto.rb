require "megalotto/version"
require "megalotto/configuration"
require "megalotto/drawing"

# https://brandonhilkert.com/blog/ruby-gem-configuration-patterns/
# https://github.com/carrierwaveuploader/carrierwave#configuring-carrierwave
# https://robots.thoughtbot.com/mygem-configure-block
# https://github.com/thoughtbot/clearance


module Megalotto
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
