# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class RegisterU < Base
        attr_reader :line

        def initialize(line)
          @line = line
        end

        def register?
          true
        end

        def data
          {
            segmento: segmento.strip,
            acrescimos: acrescimos.strip,
            valor_desconto: valor_desconto.strip,
            valor_abatimento: valor_abatimento.strip,
            valor_iof: valor_iof.strip,
            valor_pago: valor_pago.strip,
            valor_liquido: valor_liquido.strip,
            valor_outras_despesas: valor_outras_despesas.strip,
            valor_outros_creditos: valor_outros_creditos.strip,
            data_ocorrencia: data_ocorrencia.strip,
            data_credito: data_credito.strip
          }
        end

        def segmento
          line[13]
        end

        def acrescimos
          line[17..31]
        end

        def valor_desconto
          line[32..46]
        end

        def valor_abatimento
          line[47..61]
        end

        def valor_iof
          line[62..76]
        end

        def valor_pago
          line[77..91]
        end

        def valor_liquido
          line[92..106]
        end

        def valor_outras_despesas
          line[107..121]
        end

        def valor_outros_creditos
          line[122..136]
        end

        def data_ocorrencia
          line[137..144]
        end

        def data_credito
          line[145..152]
        end
      end
    end
  end
end
