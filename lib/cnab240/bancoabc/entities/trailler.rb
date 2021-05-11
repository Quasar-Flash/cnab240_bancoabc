# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class Trailler < Base
        attr_reader :line

        def initialize(line)
          @line = line
        end

        def trailler?
          true
        end

        def data; end

        # Identificacao do registro trailler
        def codigo_banco
          line[0..2]
        end

        def lote_do_servico
          line[3..6]
        end

        def tipo_registro
          line[7]
        end

        def uso_exclusivo_febraban_1
          line[8..16]
        end

        def quantidade_lotes
          line[17..22]
        end

        def quantidade_registros
          line[23..28]
        end

        def quantidade_contas_para_conciliacao
          line[29..34]
        end

        def uso_exclusivo_febraban_2
          line[35..239]
        end
      end
    end
  end
end
