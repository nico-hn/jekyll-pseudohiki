# frozen_string_literal: true

require 'pseudohikiparser'

module Jekyll
  module PseudoHiki
    ##
    # To be included in PseudoHikiConverter.
    #
    # This module implements methods required for a Jekyll converter.
    #
    module Converter
      def matches(ext)
        ext =~ /^\.hiki$/i
      end

      def output_ext(_ext)
        '.html'
      end

      def convert(content)
        ::PseudoHiki::Format.to_html5(content)
      end
    end
  end

  class PseudoHikiConverter < Converter
    safe true
    priority :low

    include ::Jekyll::PseudoHiki::Converter
  end
end
