# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterR do
  describe "#register?" do
    subject { described_class.new.register? }

    it { expect(subject).to be_truthy }
  end

  describe "#codigo_banco" do
    subject { described_class.new.codigo_banco(2) }

    it { expect(subject).to eq("002") }
  end

  describe "#lote_servico" do
    subject { described_class.new.lote_servico(2) }

    it { expect(subject).to eq("0002") }
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

    it { expect(subject).to eq("R") }
  end

  describe "#cnab" do
    subject { described_class.new.cnab("1") }

    it { expect(subject).to eq("1") }
  end

  describe "#codigo_movimento" do
    subject { described_class.new.codigo_movimento("1") }

    it { expect(subject).to eq("01") }
  end

  describe "#uso_exclusivo" do
    subject { described_class.new.uso_exclusivo(31234) }

    it { expect(subject).to eq("31234               ") }
  end

  describe "#cod_desconto_2" do
    subject { described_class.new.cod_desconto_2(820123) }

    it { expect(subject).to eq("820123") }
  end

  describe "#data_desconto_2" do
    subject { described_class.new.data_desconto_2(820123) }

    it { expect(subject).to eq("00820123") }
  end

  describe "#valor_desconto_2" do
    subject { described_class.new.valor_desconto_2(820123) }

    it { expect(subject).to eq("000000000820123") }
  end

  describe "#cod_desconto_3" do
    subject { described_class.new.cod_desconto_3(820123) }

    it { expect(subject).to eq("820123") }
  end

  describe "#data_desconto_3" do
    subject { described_class.new.data_desconto_3(820123) }

    it { expect(subject).to eq("00820123") }
  end

  describe "#valor_desconto_3" do
    subject { described_class.new.valor_desconto_3(820123) }

    it { expect(subject).to eq("000000000820123") }
  end

  describe "#cod_multa" do
    subject { described_class.new.cod_multa(820123) }

    it { expect(subject).to eq("820123") }
  end

  describe "#data_multa" do
    subject { described_class.new.data_multa(820123) }

    it { expect(subject).to eq("00820123") }
  end

  describe "#valor_multa" do
    subject { described_class.new.valor_multa(820123) }

    it { expect(subject).to eq("000000000820123") }
  end

  describe "#informacao_sacado" do
    subject { described_class.new.informacao_sacado(820123) }

    it { expect(subject).to eq("0000820123") }
  end

  describe "#mensagem_3" do
    subject { described_class.new.mensagem_3(820123) }

    it { expect(subject).to eq("820123                                  ") }
  end

  describe "#mensagem_4" do
    subject { described_class.new.mensagem_4(820123) }

    it { expect(subject).to eq("820123                                  ") }
  end

  describe "#uso_exclusivo" do
    subject { described_class.new.uso_exclusivo(820123) }

    it { expect(subject).to eq("820123              ") }
  end

  describe "#cod_ocorrencia_sacado" do
    subject { described_class.new.cod_ocorrencia_sacado(820123) }

    it { expect(subject).to eq("00820123") }
  end

  describe "#cod_banco_conta_debito" do
    subject { described_class.new.cod_banco_conta_debito(820123) }

    it { expect(subject).to eq("820") }
  end

  describe "#cod_agencia_debito" do
    subject { described_class.new.cod_agencia_debito(820123) }

    it { expect(subject).to eq("82012") }
  end

  describe "#digito_verificador_agencia" do
    subject { described_class.new.digito_verificador_agencia(820123) }

    it { expect(subject).to eq("8") }
  end

  describe "#conta_corrente_debito" do
    subject { described_class.new.conta_corrente_debito(820123) }

    it { expect(subject).to eq("820123      ") }
  end

  describe "#digito_verificador_conta" do
    subject { described_class.new.digito_verificador_conta(820123) }

    it { expect(subject).to eq("8") }
  end

  describe "#aviso_debito_automatico" do
    subject { described_class.new.aviso_debito_automatico(2820123) }

    it { expect(subject).to eq("2820123") }
  end

  describe "#uso_exclusivo_cnab" do
    subject { described_class.new.uso_exclusivo_cnab(2820123) }

    it { expect(subject).to eq("2820123  ") }
  end

  describe "#digito_verificador_agencia_conta" do
    subject { described_class.new.digito_verificador_agencia_conta(2820123) }

    it { expect(subject).to eq("2") }
  end
end
