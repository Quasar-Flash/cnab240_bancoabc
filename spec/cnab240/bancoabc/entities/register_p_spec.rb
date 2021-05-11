# frozen_string_literal: true

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterP do
  describe "#codigo_protesto" do
    subject { described_class.new.codigo_protesto(codigo_protesto) }

    context "when instrucao type is Protestar" do
      let(:codigo_protesto) { 1 }

      it { expect(subject).to eq("1") }
    end

    context "when protestar_titulos flag is true" do
      let(:codigo_protesto) { 1 }

      it { expect(subject).to eq("1") }
    end

    context "when protestar_titulos flag is false and instrucao type is not Protestar" do
      let(:codigo_protesto) { 3 }

      it { expect(subject).to eq("3") }
    end
  end

  describe "#prazo_protesto" do
    subject { described_class.new.prazo_protesto(dias_protesto, codigo_protesto) }

    context "when codigo protesto is dias corridos" do
      let(:codigo_protesto) { 1 }
      let(:dias_protesto) { 10 }

      it { expect(subject).to eq("10") }
    end

    context "when codigo protesto is dias úteis" do
      let(:codigo_protesto) { 2 }
      let(:dias_protesto) { 5 }

      it { expect(subject).to eq("05") }
    end

    context "when codigo protesto is isento" do
      let(:codigo_protesto) { 3 }
      let(:dias_protesto) { 15 }

      it { expect(subject).to eq("00") }
    end
  end
end
