# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class RegisterP < Base
        def register?
          true
        end

        def codigo_banco(data = nil)
          append_space(data, 3)
        end

        def lote_servico(data = nil)
          append_space(data, 4)
        end

        def tipo_registro(data = nil)
          append_space(data, 1)
        end

        def numero_registro(data = nil)
          prepend_zero(data, 5)
        end

        def segmento
          "P"
        end

        def cnab(data = nil)
          append_space(data, 1)
        end

        def codigo_movimento(data = nil)
          append_space(data, 2)
        end

        def identificacao_empresa
          "00019070022307900000"
        end

        def direcionamento_cobranca(data = nil)
          append_space(data, 1)
        end

        def modalidade_cobranca
          "0" * 3
        end

        def uso_exclusivo_abc(data = nil)
          append_space(data, 2)
        end

        def modalidade_banco_cedente(data = nil)
          append_space(data, 3)
        end

        def identificacao_do_titulo(data = nil)
          append_space(data, 11)
        end

        def carteira(data = nil)
          append_space(data, 1)
        end

        def cadastramento(data = nil)
          append_space(data, 1)
        end

        def documento(data = nil)
          append_space(data, 1)
        end

        def emissao_boleto(data = nil)
          append_space(data, 1)
        end

        def dist_boleto(data = nil)
          append_space(data, 1)
        end

        def numero_documento(data = nil)
          append_space(data, 15)
        end

        def data_vencimento(data = nil)
          append_space(data, 8)
        end

        def valor_titulo(data = nil)
          prepend_zero(data, 15)
        end

        def agencia(data = nil)
          append_space(data, 5)
        end

        def digito_verificador(data = nil)
          append_space(data, 1)
        end

        def especie_titulo(data = nil)
          append_space(data, 2)
        end

        def aceite
          "N"
        end

        def data_emissao(data = nil)
          append_space(data, 8)
        end

        def codigo_juros_mora(data = nil)
          append_space(data, 1)
        end

        def data_juros_mora(data = nil)
          append_space(data, 8)
        end

        def juros_mora(data = nil)
          prepend_zero(data, 15)
        end

        def cod_desconto(data = nil)
          append_space(data, 1)
        end

        def data_desconto(data = nil)
          append_space(data, 8)
        end

        def valor_desconto(data = nil)
          prepend_zero(data, 15)
        end

        def valor_iof(data = nil)
          prepend_zero(data, 15)
        end

        def valor_abatimento(data = nil)
          prepend_zero(data, 15)
        end

        def uso_empresa_cedente(data = nil)
          append_space(data, 25)
        end

        def codigo_protesto(data = nil)
          append_space(data, 1)
        end

        def prazo_protesto(data, codigo_protesto = 1)
          return "00" if codigo_protesto.to_i == 3

          prepend_zero(data, 2)
        end

        def codigo_baixa_devolucao
          "2"
        end

        def prazo_baixa_devolucao
          "0" * 3
        end

        def codigo_moeda(data = nil)
          append_space(data, 2)
        end

        def numero_contrato(data = nil)
          append_space(data, 10)
        end

        def uso_livre(data = nil)
          append_space(data, 1)
        end
      end
    end
  end
end
