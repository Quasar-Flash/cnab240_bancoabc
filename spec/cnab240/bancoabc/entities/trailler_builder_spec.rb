# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::TraillerBuilder do
  describe "#trailler?" do
    subject { described_class.new.trailler? }

    it { expect(subject).to be_truthy }
  end

  describe "#codigo_banco" do
    subject { described_class.new.codigo_banco }

    it { expect(subject).to eq("246") }
  end

  describe "#lote_do_servico" do
    subject { described_class.new.lote_do_servico }

    it { expect(subject).to eq("9999") }
  end


  describe "#tipo_registro" do
    subject { described_class.new.tipo_registro }

    it { expect(subject).to eq("9") }
  end

  describe "#quantidade_lotes" do
    subject { described_class.new.quantidade_lotes }

    it { expect(subject).to eq("000001") }
  end

  describe "#quantidade_registros" do
    subject { described_class.new.quantidade_registros("1") }

    it { expect(subject).to eq("000001") }
  end

  describe "#quantidade_contas_para_conciliacao" do
    subject { described_class.new.quantidade_contas_para_conciliacao }

    it { expect(subject).to eq("000000") }
  end

  describe "#uso_exclusivo_febraban_1" do
    subject { described_class.new.uso_exclusivo_febraban_1(234) }

    it { expect(subject).to eq("234      ") }
  end

  describe "#uso_exclusivo_febraban_2" do
    subject { described_class.new.uso_exclusivo_febraban_2(234) }

    it { expect(subject).to eq("234#{' ' * 202}") }
  end
end
