# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterQ do
  describe "#register?" do
    subject { described_class.new.register? }

    it { expect(subject).to be_truthy }
  end

  describe "#codigo_banco" do
    subject { described_class.new.codigo_banco(2) }

    it { expect(subject).to eq("2  ") }
  end

  describe "#lote_servico" do
    subject { described_class.new.lote_servico(2) }

    it { expect(subject).to eq("2   ") }
  end

  describe "#tipo_registro" do
    subject { described_class.new.tipo_registro(2) }

    it { expect(subject).to eq("2") }
  end

  describe "#numero_registro" do
    subject { described_class.new.numero_registro(2) }

    it { expect(subject).to eq("00002") }
  end

  describe "#segmento" do
    subject { described_class.new.segmento }

    it { expect(subject).to eq("Q") }
  end

  describe "#cnab" do
    subject { described_class.new.cnab("1") }

    it { expect(subject).to eq("1") }
  end

  describe "#codigo_movimento" do
    subject { described_class.new.codigo_movimento("1") }

    it { expect(subject).to eq("1 ") }
  end

  describe "#uso_livre" do
    subject { described_class.new.uso_livre(31234) }

    it { expect(subject).to eq("31234   ") }
  end

  describe "#tipo_inscricao" do
    subject { described_class.new.tipo_inscricao(31234) }

    it { expect(subject).to eq("3") }
  end

  describe "#numero_inscricao" do
    subject { described_class.new.numero_inscricao(31234) }

    it { expect(subject).to eq("000000000031234") }
  end

  describe "#nome" do
    subject { described_class.new.nome(31234) }

    it { expect(subject).to eq("31234                                   ") }
  end

  describe "#endereco" do
    subject { described_class.new.endereco(31234) }

    it { expect(subject).to eq("31234                                   ") }
  end

  describe "#bairro" do
    subject { described_class.new.bairro(31234) }

    it { expect(subject).to eq("31234          ") }
  end

  describe "#cep" do
    subject { described_class.new.cep(31233242342344) }

    it { expect(subject).to eq("31233") }
  end

  describe "#sufixo_cep" do
    subject { described_class.new.sufixo_cep(2341) }

    it { expect(subject).to eq("234") }
  end

  describe "#cidade" do
    subject { described_class.new.cidade("RIO CLARO") }

    it { expect(subject).to eq("RIO CLARO      ") }
  end

  describe "#cidade" do
    subject { described_class.new.uf("SPF") }

    it { expect(subject).to eq("SP") }
  end

  describe "#uf" do
    subject { described_class.new.uf("SPF") }

    it { expect(subject).to eq("SP") }
  end

  describe "#tipo_inscricao_sac" do
    subject { described_class.new.tipo_inscricao_sac("SPF") }

    it { expect(subject).to eq("S") }
  end

  describe "#numero_inscricao_sac" do
    subject { described_class.new.numero_inscricao_sac("SP1231231412312") }

    it { expect(subject).to eq("SP1231231412312") }
  end

  describe "#nome_sac" do
    subject { described_class.new.nome_sac("SP12312314123123F") }

    it { expect(subject).to eq("SP12312314123123F                       ") }
  end

  describe "#banco_correspondente" do
    subject { described_class.new.banco_correspondente }

    it { expect(subject).to eq("000") }
  end

  describe "#nosso_numero_banco" do
    subject { described_class.new.nosso_numero_banco(13948129038) }

    it { expect(subject).to eq("13948129038         ") }
  end
end
