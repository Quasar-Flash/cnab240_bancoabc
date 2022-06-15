# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterT do
  let(:header) { Array.new(13) { rand(10) }.join }
  let(:segmento) { Array.new(1) { rand(10) }.join }
  let(:segmento_space) { Array.new(1) { rand(10) }.join }
  let(:codigo_movimento) { Array.new(2) { rand(10) }.join }
  let(:codigo_movimento_space) { Array.new(29) { rand(10) }.join }
  let(:identificacao_do_titulo) { Array.new(11) { rand(10) }.join }
  let(:codigo_carteira) { Array.new(1) { rand(10) }.join }
  let(:numero_documento) { Array.new(15) { rand(10) }.join }
  let(:data_vencimento) { Array.new(8) { rand(10) }.join }
  let(:valor_titulo) { Array.new(15) { rand(10) }.join }
  let(:numero_do_banco) { Array.new(3) { rand(10) }.join }
  let(:agencia) { Array.new(5) { rand(10) }.join }
  let(:digito_verificador) { Array.new(1) { rand(10) }.join }
  let(:uso_empresa) { Array.new(25) { rand(10) }.join }
  let(:uso_empresa_space) { Array.new(2) { rand(10) }.join }
  let(:tipo_inscricao) { Array.new(1) { rand(10) }.join }
  let(:numero_inscricao) { Array.new(15) { rand(10) }.join }
  let(:nome) { Array.new(40) { rand(10) }.join }
  let(:nome_space) { Array.new(10) { rand(10) }.join }
  let(:motivo_ocorrencia) { Array.new(10) { rand(10) }.join }
  let(:valor_de_tarifas_custas_correspondentes) { Array.new(15) { rand(10) }.join }
  let(:ocorrencia) { described_class.new(line).ocorrencia }

  let(:line) do
    header + segmento + segmento_space + codigo_movimento + codigo_movimento_space + identificacao_do_titulo + codigo_carteira +
      numero_documento + data_vencimento + valor_titulo + numero_do_banco + agencia + digito_verificador +
      uso_empresa + uso_empresa_space + tipo_inscricao + numero_inscricao + nome + nome_space + valor_de_tarifas_custas_correspondentes + motivo_ocorrencia
  end

  describe "#register?" do
    subject { described_class.new(line).register? }

    it { expect(subject).to be_truthy }
  end

  describe "#data" do
    subject { described_class.new(line).data }

    it {
      expect(subject).to eq({
                              segmento: segmento.strip,
                              codigo_movimento: codigo_movimento.strip,
                              ocorrencia: ocorrencia,
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
                              motivo_ocorrencia: motivo_ocorrencia
                            })
    }
  end
end
