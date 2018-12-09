require "megalotto/version"
require "megalotto/configuration"
require "megalotto/drawing"
require "megalotto/install_generator"
require "pry-byebug"

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

binding.pry
puts 'hi'
