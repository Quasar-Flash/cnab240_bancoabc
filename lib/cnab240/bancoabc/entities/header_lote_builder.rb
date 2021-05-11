# frozen_string_literal: true


module CNAB240
  module BancoABC
    module Entities
      class HeaderLoteBuilder < Base
        def header?
          true
        end

        def codigo_do_banco
          "246"
        end

        def lote_servico
          "#{'0' * 3}1"
        end

        def tipo_registro
          "1"
        end

        def tipo_operacao
          "R"
        end

        def tipo_servico
          "01"
        end

        def uso_exclusivo_cnab_1(data = nil)
          append_space(data, 2)
        end

        def numero_versao_layout
          "030"
        end

        def uso_exclusivo_cnab_2(data = nil)
          append_space(data, 1)
        end

        def tipo_inscricao_empresa
          "2"
        end

        def numero_inscricao_empresa
          "034218965000177"
        end

        def codigo_identificacao_empresa_banco
          "00019070022307900000"
        end

        def nome_empresa
          "QUASAR FLASH FI EM DIREITOS CM"
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

        def data_credito
          "0" * 8
        end

        def uso_exclusivo(data = nil)
          append_space(data, 33)
        end
      end
    end
  end
end
