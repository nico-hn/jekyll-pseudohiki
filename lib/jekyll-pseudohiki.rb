# frozen_string_literal: true

require 'jekyll'
require_relative 'jekyll-pseudohiki/version'
require_relative 'jekyll-pseudohiki/converter'

module Jekyll
  module PseudoHiki
    class Error < StandardError; end
  end
end
