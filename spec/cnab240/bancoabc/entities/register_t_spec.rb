# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterT do
  let(:header) { 13.times.map { rand(10) }.join }
  let(:segmento) { 1.times.map { rand(10) }.join }
  let(:segmento_space) { 1.times.map { rand(10) }.join }
  let(:codigo_movimento) { 2.times.map { rand(10) }.join }
  let(:codigo_movimento_space) { 29.times.map { rand(10) }.join }
  let(:identificacao_do_titulo) { 11.times.map { rand(10) }.join }
  let(:codigo_carteira) { 1.times.map { rand(10) }.join }
  let(:numero_documento) { 15.times.map { rand(10) }.join }
  let(:data_vencimento) { 8.times.map { rand(10) }.join }
  let(:valor_titulo) { 15.times.map { rand(10) }.join }
  let(:numero_do_banco) { 3.times.map { rand(10) }.join }
  let(:agencia) { 5.times.map { rand(10) }.join }
  let(:digito_verificador) { 1.times.map { rand(10) }.join }
  let(:uso_empresa) { 25.times.map { rand(10) }.join }
  let(:uso_empresa_space) { 2.times.map { rand(10) }.join }
  let(:tipo_inscricao) { 1.times.map { rand(10) }.join }
  let(:numero_inscricao) { 15.times.map { rand(10) }.join }
  let(:nome) { 40.times.map { rand(10) }.join }
  let(:nome_space) { 10.times.map { rand(10) }.join }
  let(:motivo_ocorrencia) { 10.times.map { rand(10) }.join }
  let(:valor_de_tarifas_custas_correspondentes) { 15.times.map { rand(10) }.join }
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

    it { expect(subject).to eq({
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
    }) }
  end
end
