# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class HeaderBuilder < Base
        def header?
          true
        end

        def codigo_do_banco(data)
          prepend_zero(data, 3)
        end

        def lote_servico(data)
          prepend_zero(data, 4)
        end

        def tipo_servico(data)
          prepend_zero(data, 1)
        end

        def uso_exclusivo_febraban_1(data = nil)
          append_space(data, 9)
        end

        def tipo_inscricao_da_empresa(data)
          prepend_zero(data, 1)
        end

        def numero_inscricao_da_empresa(data)
          prepend_zero(data, 14)
        end

        def codigo_identificacao_empresa_banco(data)
          prepend_zero(data, 20)
        end

        def nome_empresa(data)
          append_space(data, 30)
        end

        def nome_banco(data)
          append_space(data, 30)
        end

        def uso_exclusivo_febraban_2(data = nil)
          append_space(data, 10)
        end

        def codigo_retorno(data)
          prepend_zero(data, 1)
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

        def numero_versao_layout(data)
          prepend_zero(data, 3)
        end

        def desidade_gravacao_arquivo(data)
          prepend_zero(data, 5)
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
