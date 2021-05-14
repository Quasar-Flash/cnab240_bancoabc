# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::TraillerLoteBuilder do
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

    it { expect(subject).to eq("0001") }
  end

  describe "#tipo_registro" do
    subject { described_class.new.tipo_registro }

    it { expect(subject).to eq("5") }
  end

  describe "#quantidade_registros_lotes" do
    subject { described_class.new.quantidade_registros_lotes(123456) }

    it { expect(subject).to eq("123456") }
  end

  describe "#uso_exclusivo_febraban" do
    subject { described_class.new.uso_exclusivo_febraban(1234567890) }

    it { expect(subject).to eq("123456789") }
  end

  describe "#quantidade_titulos_cobranca" do
    subject { described_class.new.quantidade_titulos_cobranca }

    it { expect(subject).to eq("0" * 6) }
  end

  describe "#valor_total_titulos_carteira" do
    subject { described_class.new.valor_total_titulos_carteira }

    it { expect(subject).to eq("0" * 17) }
  end

  describe "#uso_abc" do
    subject { described_class.new.uso_abc(123456789) }

    it { expect(subject).to eq("12345678") }
  end

  describe "#uso_exclusivo" do
    subject { described_class.new.uso_exclusivo("0" * 117) }

    it { expect(subject).to eq("0" * 117) }
  end
end
