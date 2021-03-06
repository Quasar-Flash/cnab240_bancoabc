# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class Header < Base
        attr_reader :line

        def initialize(line)
          @line = line
        end

        def header?
          true
        end

        def data
          {
            codigo_do_banco: codigo_do_banco.strip,
            lote_servico: lote_servico.strip,
            tipo_servico: tipo_servico.strip,
            uso_exclusivo_febraban_1: uso_exclusivo_febraban_1.strip,
            tipo_inscricao_da_empresa: tipo_inscricao_da_empresa.strip,
            numero_inscricao_da_empresa: numero_inscricao_da_empresa.strip,
            codigo_identificacao_empresa_banco: codigo_identificacao_empresa_banco.strip,
            nome_empresa: nome_empresa.strip,
            nome_banco: nome_banco.strip,
            uso_exclusivo_febraban_2: uso_exclusivo_febraban_2.strip,
            codigo_retorno: codigo_retorno.strip,
            data_geracao: data_geracao.strip,
            hora_geracao: hora_geracao.strip,
            numero_sequencial: numero_sequencial.strip,
            numero_versao_layout: numero_versao_layout.strip,
            desidade_gravacao_arquivo: desidade_gravacao_arquivo.strip,
            uso_reservado_banco: uso_reservado_banco.strip,
            uso_reservado_empresa: uso_reservado_empresa.strip,
            uso_exclusivo_febraban_3: uso_exclusivo_febraban_3.strip
          }
        end

        def codigo_do_banco
          line[0..2]
        end

        def lote_servico
          line[3..6]
        end

        def tipo_servico
          line[7]
        end

        def uso_exclusivo_febraban_1
          line[8..16]
        end

        def tipo_inscricao_da_empresa
          line[17]
        end

        def numero_inscricao_da_empresa
          line[18..31]
        end

        def codigo_identificacao_empresa_banco
          line[32..71]
        end

        def nome_empresa
          line[72..101]
        end

        def nome_banco
          line[102..131]
        end

        def uso_exclusivo_febraban_2
          line[132..141]
        end

        def codigo_retorno
          line[142]
        end

        def data_geracao
          line[143..150]
        end

        def hora_geracao
          line[151..156]
        end

        def numero_sequencial
          line[157..162]
        end

        def numero_versao_layout
          line[163..165]
        end

        def desidade_gravacao_arquivo
          line[166..170]
        end

        def uso_reservado_banco
          line[171..190]
        end

        def uso_reservado_empresa
          line[191..210]
        end

        def uso_exclusivo_febraban_3
          line[211..239]
        end
      end
    end
  end
end
