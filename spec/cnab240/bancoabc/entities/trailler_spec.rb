# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::Trailler do
  let(:codigo_banco) { Array.new(3) { rand(10) }.join }
  let(:lote_do_servico) { Array.new(4) { rand(10) }.join }
  let(:tipo_registro) { Array.new(1) { rand(10) }.join }
  let(:uso_exclusivo_febraban_1) { Array.new(9) { rand(10) }.join }
  let(:quantidade_lotes) { Array.new(6) { rand(10) }.join }
  let(:quantidade_registros) { Array.new(6) { rand(10) }.join }
  let(:quantidade_contas_para_conciliacao) { Array.new(6) { rand(10) }.join }
  let(:uso_exclusivo_febraban_2) { Array.new(204) { rand(10) }.join }

  let(:line) do
    codigo_banco + lote_do_servico + tipo_registro + uso_exclusivo_febraban_1 + quantidade_lotes +
      quantidade_registros + quantidade_contas_para_conciliacao + uso_exclusivo_febraban_2
  end

  describe "#trailler?" do
    subject { described_class.new(line).trailler? }

    it { expect(subject).to be_truthy }
  end

  describe "#codigo_banco" do
    subject { described_class.new(line).codigo_banco }

    it { expect(subject).to eq(codigo_banco) }
  end

  describe "#lote_do_servico" do
    subject { described_class.new(line).lote_do_servico }

    it { expect(subject).to eq(lote_do_servico) }
  end

  describe "#tipo_registro" do
    subject { described_class.new(line).tipo_registro }

    it { expect(subject).to eq(tipo_registro) }
  end

  describe "#uso_exclusivo_febraban_1" do
    subject { described_class.new(line).uso_exclusivo_febraban_1 }

    it { expect(subject).to eq(uso_exclusivo_febraban_1) }
  end

  describe "#quantidade_lotes" do
    subject { described_class.new(line).quantidade_lotes }

    it { expect(subject).to eq(quantidade_lotes) }
  end

  describe "#quantidade_registros" do
    subject { described_class.new(line).quantidade_registros }

    it { expect(subject).to eq(quantidade_registros) }
  end

  describe "#quantidade_contas_para_conciliacao" do
    subject { described_class.new(line).quantidade_contas_para_conciliacao }

    it { expect(subject).to eq(quantidade_contas_para_conciliacao) }
  end

  describe "#uso_exclusivo_febraban_2" do
    subject { described_class.new(line).uso_exclusivo_febraban_2 }

    it { expect(subject).to eq(uso_exclusivo_febraban_2) }
  end
end
