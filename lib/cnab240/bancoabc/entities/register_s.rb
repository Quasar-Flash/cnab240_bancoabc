# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class RegisterS < Base
        def register?
          true
        end

        def banco(data = "246")
          prepend_zero(data, 3)
        end

        def lote(data)
          prepend_zero(data, 4)
        end

        def registro(data)
          prepend_zero(data, 1)
        end

        def numero_registro(data = nil)
          prepend_zero(data, 5)
        end

        def sequencial_registro_lote(data = nil)
          append_space(data, 5) # incremental
        end

        def segmento_registro_detalhe
          "S"
        end

        def uso_exclusivo_febraban_1(data = nil)
          append_space(data, 1)
        end

        def codigo_movimento(data = nil)
          prepend_zero(data, 2)
        end

        def tipo_impressao(data)
          prepend_zero(data, 1)
        end

        def mensagem1(data = nil)
          append_space(data, 40)
        end

        def mensagem2(data = nil)
          append_space(data, 40)
        end

        def mensagem3(data = nil)
          append_space(data, 40)
        end

        def mensagem4(data = nil)
          append_space(data, 40)
        end

        def mensagem5(data = nil)
          append_space(data, 40)
        end

        def uso_exclusivo_febraban_2(data = nil)
          append_space(data, 22)
        end
      end
    end
  end
end
