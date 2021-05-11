# frozen_string_literal: true

module CNAB240
  module BancoABC
    module Entities
      class RegisterQ < Base
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
          "Q"
        end

        def cnab(data = nil)
          append_space(data, 1)
        end

        def codigo_movimento(data = nil)
          append_space(data, 2)
        end

        def tipo_inscricao(data = nil)
          append_space(data, 1)
        end

        def numero_inscricao(data = nil)
          prepend_zero(data, 15)
        end

        def nome(data = nil)
          append_space(data, 40)
        end

        def endereco(data = nil)
          append_space(data, 40)
        end

        def bairro(data = nil)
          append_space(data, 15)
        end

        def cep(data = nil)
          append_space(data, 5)
        end

        def sufixo_cep(data = nil)
          append_space(data, 3)
        end

        def cidade(data = nil)
          append_space(data, 15)
        end

        def uf(data = nil)
          append_space(data, 2)
        end

        def tipo_inscricao_sac(data = nil)
          append_space(data, 1)
        end

        def numero_inscricao_sac(data = nil)
          prepend_zero(data, 15)
        end

        def nome_sac(data = nil)
          append_space(data, 40)
        end

        def banco_correspondente
          "0" * 3
        end

        def nosso_numero_banco(data = nil)
          append_space(data, 20)
        end

        def uso_livre(data = nil)
          append_space(data, 8)
        end
      end
    end
  end
end
