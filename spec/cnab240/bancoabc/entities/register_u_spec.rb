# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterU do
  let(:header) { 13.times.map { rand(10) }.join }
  let(:segmento) { 1.times.map { rand(10) }.join }
  let(:segmento_space) { 3.times.map { rand(10) }.join }
  let(:acrescimos) { 15.times.map { rand(10) }.join }
  let(:valor_desconto) { 15.times.map { rand(10) }.join }
  let(:valor_abatimento) { 15.times.map { rand(10) }.join }
  let(:valor_iof) { 15.times.map { rand(10) }.join }
  let(:valor_pago) { 15.times.map { rand(10) }.join }
  let(:valor_liquido) { 15.times.map { rand(10) }.join }
  let(:valor_outras_despesas) { 15.times.map { rand(10) }.join }
  let(:valor_outros_creditos) { 15.times.map { rand(10) }.join }
  let(:data_ocorrencia) { 8.times.map { rand(10) }.join }
  let(:data_credito) { 8.times.map { rand(10) }.join }

  let(:line) do
    header + segmento + segmento_space + acrescimos + valor_desconto + valor_abatimento +
      valor_iof + valor_pago + valor_liquido + valor_outras_despesas + valor_outros_creditos +
      data_ocorrencia + data_credito
  end

  describe "#register?" do
    subject { described_class.new(line).register? }

    it { expect(subject).to be_truthy }
  end

  describe "#data" do
    subject { described_class.new(line).data }

    it { expect(subject).to eq({
      segmento: segmento,
      acrescimos: acrescimos,
      valor_desconto: valor_desconto,
      valor_abatimento: valor_abatimento,
      valor_iof: valor_iof,
      valor_pago: valor_pago,
      valor_liquido: valor_liquido,
      valor_outras_despesas: valor_outras_despesas,
      valor_outros_creditos: valor_outros_creditos,
      data_ocorrencia: data_ocorrencia,
      data_credito: data_credito
    }) }
  end
end
