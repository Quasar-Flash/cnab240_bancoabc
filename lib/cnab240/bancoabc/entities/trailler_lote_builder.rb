# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class TraillerLoteBuilder < Base
        def trailler?
          true
        end

        def codigo_banco(data = "246")
          prepend_zero(data, 3)
        end

        def lote_do_servico(data = "1")
          prepend_zero(data, 4)
        end

        def tipo_registro(data)
          prepend_zero(data, 1)
        end

        def uso_exclusivo_febraban(data = nil)
          append_space(data, 9)
        end

        def quantidade_registros_lotes(data = nil)
          prepend_zero(data, 6)
        end

        def quantidade_titulos_cobranca(data = "0")
          prepend_zero(data, 6)
        end

        def valor_total_titulos_carteira(data = "0")
          prepend_zero(data, 17)
        end

        def uso_abc(data = nil)
          append_space(data, 8)
        end

        def uso_exclusivo(data = nil)
          append_space(data, 117)
        end
      end
    end
  end
end
