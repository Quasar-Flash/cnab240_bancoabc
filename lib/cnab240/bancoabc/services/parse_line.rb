# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Services
      class ParseLine
        HEADER = "0"
        REGISTERT = "1"
        REGISTERU = "2"
        TRAILLER = "9"

        def self.call(line, type)
          return CNAB240::BancoABC::Entities::Header.new(line) if type == HEADER
          return CNAB240::BancoABC::Entities::RegisterT.new(line) if type == REGISTERT
          return CNAB240::BancoABC::Entities::RegisterU.new(line) if type == REGISTERU
          return CNAB240::BancoABC::Entities::Trailler.new(line) if type == TRAILLER
        end
      end
    end
  end
end
