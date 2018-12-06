require "megalotto/version"
require "megalotto/configuration"
require "megalotto/drawing"
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
