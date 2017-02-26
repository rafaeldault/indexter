require 'indexter/version'
require 'indexter/validator'
require 'indexter/railtie' if defined?(Rails)

require 'indexter/formatters/hash'
require 'indexter/formatters/json'
require 'indexter/formatters/pass_fail'
require 'indexter/formatters/table'

module Indexter
  extend self

  def validate(suffixes: Indexter::Validator::DEFAULT_SUFFIXES, exclusions: Indexter::Validator::DEFAULT_EXCLUSIONS, format: nil)
    obj = Indexter::Validator.new(suffixes: suffixes, exclusions: exclusions, formatter: format)
    obj.validate
  end
end
