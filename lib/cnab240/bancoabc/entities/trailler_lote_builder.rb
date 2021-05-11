# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class TraillerLoteBuilder < Base
        def trailler?
          true
        end

        def codigo_banco
          "246"
        end

        def lote_do_servico
          "#{'0' * 3}1"
        end

        def tipo_registro
          "5"
        end

        def uso_exclusivo_febraban(data = nil)
          append_space(data, 9)
        end

        def quantidade_registros_lotes(data = nil)
          prepend_zero(data, 6)
        end

        def quantidade_titulos_cobranca
          "0" * 6
        end

        def valor_total_titulos_carteira
          "0" * 17
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
