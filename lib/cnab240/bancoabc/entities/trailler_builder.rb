# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class TraillerBuilder < Base
        def trailler?
          true
        end

        def codigo_banco(data = "246")
          prepend_zero(data, 3)
        end

        def lote_do_servico(data)
          prepend_zero(data, 4)
        end

        def tipo_registro(data)
          prepend_zero(data, 1)
        end

        def quantidade_lotes(data = "1")
          prepend_zero(data, 6)
        end

        def quantidade_registros(data = nil)
          prepend_zero(data, 6)
        end

        def quantidade_contas_para_conciliacao(data = "0")
          prepend_zero(data, 6)
        end

        def uso_exclusivo_febraban_1(data = nil)
          append_space(data, 9)
        end

        def uso_exclusivo_febraban_2(data = nil)
          append_space(data, 205)
        end
      end
    end
  end
end
