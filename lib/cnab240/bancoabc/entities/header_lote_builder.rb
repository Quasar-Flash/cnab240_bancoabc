# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class HeaderLoteBuilder < Base
        def header?
          true
        end

        def codigo_do_banco(data = "246")
          prepend_zero(data, 3)
        end

        def lote_servico(data)
          prepend_zero(data, 4)
        end

        def tipo_registro(data = "1")
          prepend_zero(data, 1)
        end

        def tipo_operacao(data)
          prepend_zero(data, 1)
        end

        def tipo_servico(data)
          prepend_zero(data, 2)
        end

        def uso_exclusivo_cnab_1(data = nil)
          append_space(data, 2)
        end

        def numero_versao_layout(data)
          prepend_zero(data, 3)
        end

        def uso_exclusivo_cnab_2(data = nil)
          append_space(data, 1)
        end

        def tipo_inscricao_empresa(data)
          append_space(data, 1)
        end

        def numero_inscricao_empresa(data)
          prepend_zero(data, 15)
        end

        def codigo_identificacao_empresa_banco(data)
          prepend_zero(data, 20)
        end

        def nome_empresa
          prepend_zero(data, 30)
        end

        def mensagem(data = nil)
          append_space(data, 40)
        end

        def numero_remessa(date_time)
          date = date_time.day.to_s.to_s + date_time.month.to_s.to_s + date_time.hour.to_s.to_s + date_time.min.to_s.to_s

          prepend_zero(date, 8)
        end

        def data_gravacao(date_time)
          date_time.strftime("%d%m%Y")
        end

        def data_credito(data = nil)
          prepend_zero(data, 8)
        end

        def uso_exclusivo(data = nil)
          append_space(data, 33)
        end
      end
    end
  end
end
