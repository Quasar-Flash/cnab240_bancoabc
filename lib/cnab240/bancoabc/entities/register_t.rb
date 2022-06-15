# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class RegisterT < Base
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
            codigo_movimento: cod_movimento.strip,
            ocorrencia: ocorrencia.strip,
            identificacao_do_titulo: identificacao_do_titulo.strip,
            codigo_carteira: codigo_carteira.strip,
            numero_documento: numero_documento.strip,
            data_vencimento: data_vencimento.strip,
            valor_titulo: valor_titulo.strip,
            numero_do_banco: numero_do_banco.strip,
            agencia: agencia.strip,
            digito_verificador: digito_verificador.strip,
            uso_empresa: uso_empresa.strip,
            tipo_inscricao: tipo_inscricao.strip,
            numero_inscricao: numero_inscricao.strip,
            nome: nome.strip,
            valor_de_tarifas_custas_correspondentes: valor_de_tarifas_custas_correspondentes.strip,
            motivo_ocorrencia: motivo_ocorrencia.strip
          }
        end

        def ocorrencia
          action = CNAB240::BancoABC::OCORRENCIAS.select { |_k, v| v == cod_movimento }
          return "ocorrencia_nao_mapeada" if action.empty?

          action.keys.last.to_s
        end

        def segmento
          line[13]
        end

        def cod_movimento
          line[15..16]
        end

        def identificacao_do_titulo
          line[46..56]
        end

        def codigo_carteira
          line[57]
        end

        def numero_documento
          line[58..72]
        end

        def data_vencimento
          line[73..80]
        end

        def valor_titulo
          line[81..95]
        end

        def numero_do_banco
          line[96..98]
        end

        def agencia
          line[99..103]
        end

        def digito_verificador
          line[104]
        end

        def uso_empresa
          line[105..129]
        end

        def tipo_inscricao
          line[132]
        end

        def numero_inscricao
          line[133..147]
        end

        def nome
          line[148..187]
        end

        def valor_de_tarifas_custas_correspondentes
          line[198..212]
        end

        def motivo_ocorrencia
          line[213..222]
        end
      end
    end
  end
end
