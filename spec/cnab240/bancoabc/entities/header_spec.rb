# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::Header do
  let(:codigo_do_banco) { 3.times.map { rand(10) }.join }
  let(:lote_servico) { 4.times.map { rand(10) }.join }
  let(:tipo_servico) { 1.times.map { rand(10) }.join }
  let(:uso_exclusivo_febraban_1) { 9.times.map { rand(10) }.join }
  let(:tipo_inscricao_da_empresa) { 1.times.map { rand(10) }.join }
  let(:numero_inscricao_da_empresa) { 14.times.map { rand(10) }.join }
  let(:codigo_identificacao_empresa_banco) { 40.times.map { rand(10) }.join }
  let(:nome_empresa) { 30.times.map { rand(10) }.join }
  let(:nome_banco) { 30.times.map { rand(10) }.join }
  let(:uso_exclusivo_febraban_2) { 10.times.map { rand(10) }.join }
  let(:codigo_retorno) { 1.times.map { rand(10) }.join }
  let(:data_geracao) { 8.times.map { rand(10) }.join }
  let(:hora_geracao) { 6.times.map { rand(10) }.join }
  let(:numero_sequencial) { 6.times.map { rand(10) }.join }
  let(:numero_versao_layout) { 3.times.map { rand(10) }.join }
  let(:desidade_gravacao_arquivo) { 5.times.map { rand(10) }.join }
  let(:uso_reservado_banco) { 20.times.map { rand(10) }.join }
  let(:uso_reservado_empresa) { 20.times.map { rand(10) }.join }
  let(:uso_exclusivo_febraban_3) { 28.times.map { rand(10) }.join }

  let(:line) do
    codigo_do_banco + lote_servico + tipo_servico + uso_exclusivo_febraban_1 + tipo_inscricao_da_empresa +
      numero_inscricao_da_empresa + codigo_identificacao_empresa_banco + nome_empresa + nome_banco + uso_exclusivo_febraban_2 +
      codigo_retorno + data_geracao + hora_geracao + numero_sequencial + numero_versao_layout + desidade_gravacao_arquivo +
      uso_reservado_banco + uso_reservado_empresa + uso_exclusivo_febraban_3
  end

  describe "#header?" do
    subject { described_class.new(line).header? }

    it { expect(subject).to be_truthy }
  end

  describe "#data" do
    subject { described_class.new(line).data }

    it { expect(subject).to eq({
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
      }) }
  end
end
