# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class HeaderBuilder < Base
        def header?
          true
        end

        def codigo_do_banco
          "246"
        end

        def lote_servico
          "0" * 4
        end

        def tipo_servico
          "0"
        end

        def uso_exclusivo_febraban_1(data = nil)
          append_space(data, 9)
        end

        def tipo_inscricao_da_empresa
          "2"
        end

        def numero_inscricao_da_empresa
          "34218965000177"
        end

        def codigo_identificacao_empresa_banco
          "00019070022307900000"
        end

        def nome_empresa
          "QUASAR FLASH FI EM DIREITOS CM"
        end

        def nome_banco
          "BCO ABC BRASIL#{' ' * 16}"
        end

        def uso_exclusivo_febraban_2(data = nil)
          append_space(data, 10)
        end

        def codigo_retorno
          "1"
        end

        def data_geracao(date_time)
          date_time.strftime("%d%m%Y")
        end

        def hora_geracao(date_time)
          date_time.strftime("%H%M%S")
        end

        def numero_sequencial(date_time)
          date = date_time.day.to_s + date_time.hour.to_s + date_time.min.to_s

          prepend_zero(date, 6)
        end

        def numero_versao_layout
          "040"
        end

        def desidade_gravacao_arquivo
          "01600"
        end

        def uso_reservado_banco(data = nil)
          append_space(data, 20)
        end

        def uso_reservado_empresa(data = nil)
          append_space(data, 20)
        end

        def uso_exclusivo_febraban_3(data = nil)
          append_space(data, 29)
        end
      end
    end
  end
end
