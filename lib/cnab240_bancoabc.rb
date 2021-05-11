# frozen_string_literal: true

require "faraday"
require "i18n"
require "json"

require "cnab240/bancoabc/version"
require "cnab240/bancoabc/ocorrencias"

require "cnab240/bancoabc/services/parse_line"

require "cnab240/bancoabc/entities/base"
require "cnab240/bancoabc/entities/header_builder"
require "cnab240/bancoabc/entities/header_lote_builder"
require "cnab240/bancoabc/entities/header"
require "cnab240/bancoabc/entities/register_p"
require "cnab240/bancoabc/entities/register_q"
require "cnab240/bancoabc/entities/register_r"
require "cnab240/bancoabc/entities/register_s"
require "cnab240/bancoabc/entities/register_t"
require "cnab240/bancoabc/entities/register_u"
require "cnab240/bancoabc/entities/trailler_builder"
require "cnab240/bancoabc/entities/trailler"
require "cnab240/bancoabc/entities/trailler_lote_builder"

module CNAB240
  module BancoABC
    class << self
      attr_writer :configuration

      def configuration
        @configuration ||= Configuration.new
      end
    end

    def self.configure
      self.configuration ||= Configuration.new

      yield(configuration)
    end

    class Configuration
    end
  end
end
