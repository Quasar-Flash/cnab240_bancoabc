# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class RegisterR < Base
        def register?
          true
        end

        def codigo_banco(data = nil)
          prepend_zero(data, 3)
        end

        def lote_servico(data = nil)
          prepend_zero(data, 4)
        end

        def tipo_registro(data = nil)
          prepend_zero(data, 1)
        end

        def numero_registro(data = nil)
          prepend_zero(data, 5)
        end

        def segmento
          "R"
        end

        def cnab(data = nil)
          append_space(data, 1)
        end

        def codigo_movimento(data = nil)
          prepend_zero(data, 2)
        end

        def cod_desconto_2(data = nil)
          prepend_zero(data, 1)
        end

        def data_desconto_2(data = nil)
          prepend_zero(data, 8)
        end

        def valor_desconto_2(data = nil)
          prepend_zero(data, 15)
        end

        def cod_desconto_3(data = nil)
          prepend_zero(data, 1)
        end

        def data_desconto_3(data = nil)
          prepend_zero(data, 8)
        end

        def valor_desconto_3(data = nil)
          prepend_zero(data, 15)
        end

        def cod_multa(data = nil)
          prepend_zero(data, 1)
        end

        def data_multa(data = nil)
          prepend_zero(data, 8)
        end

        def valor_multa(data = nil)
          prepend_zero(data, 15)
        end

        def informacao_sacado(data = nil)
          prepend_zero(data, 10)
        end

        def mensagem_3(data = nil)
          append_space(data, 40)
        end

        def mensagem_4(data = nil)
          append_space(data, 40)
        end

        def uso_exclusivo(data = nil)
          append_space(data, 20)
        end

        def cod_ocorrencia_sacado(data = nil)
          prepend_zero(data, 8)
        end

        def cod_banco_conta_debito(data = nil)
          append_space(data, 3)
        end

        def cod_agencia_debito(data = nil)
          append_space(data, 5)
        end

        def digito_verificador_agencia(data = nil)
          append_space(data, 1)
        end

        def conta_corrente_debito(data = nil)
          append_space(data, 12)
        end

        def digito_verificador_conta(data = nil)
          append_space(data, 1)
        end

        def digito_verificador_agencia_conta(data = nil)
          append_space(data, 1)
        end

        def aviso_debito_automatico(data = nil)
          prepend_zero(data, 1)
        end

        def uso_exclusivo_cnab(data = nil)
          append_space(data, 9)
        end
      end
    end
  end
end
