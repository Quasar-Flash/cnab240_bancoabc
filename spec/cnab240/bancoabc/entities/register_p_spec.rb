# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterP do
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

    it { expect(subject).to eq("P") }
  end

  describe "#cnab" do
    subject { described_class.new.cnab("1") }

    it { expect(subject).to eq("1") }
  end

  describe "#codigo_movimento" do
    subject { described_class.new.codigo_movimento("1") }

    it { expect(subject).to eq("1 ") }
  end

  describe "#direcionamento_cobranca" do
    subject { described_class.new.direcionamento_cobranca(23) }

    it { expect(subject).to eq("2") }
  end

  describe "#identificacao_empresa" do
    subject { described_class.new.identificacao_empresa }

    it { expect(subject).to eq("00019070022307900000") }
  end

  describe "#modalidade_cobranca" do
    subject { described_class.new.modalidade_cobranca }

    it { expect(subject).to eq("000") }
  end

  describe "#uso_exclusivo_abc" do
    subject { described_class.new.uso_exclusivo_abc(1) }

    it { expect(subject).to eq("1 ") }
  end

  describe "#modalidade_banco_cedente" do
    subject { described_class.new.modalidade_banco_cedente(1) }

    it { expect(subject).to eq("1  ") }
  end

  describe "#identificacao_do_titulo" do
    subject { described_class.new.identificacao_do_titulo(1234567) }

    it { expect(subject).to eq("1234567    ") }
  end

  describe "#carteira" do
    subject { described_class.new.carteira(1234567) }

    it { expect(subject).to eq("1") }
  end

  describe "#cadastramento" do
    subject { described_class.new.cadastramento("P") }

    it { expect(subject).to eq("P") }
  end

  describe "#documento" do
    subject { described_class.new.documento("D") }

    it { expect(subject).to eq("D") }
  end

  describe "#dist_boleto" do
    subject { described_class.new.dist_boleto("B") }

    it { expect(subject).to eq("B") }
  end

  describe "#numero_documento" do
    subject { described_class.new.numero_documento("987654321") }

    it { expect(subject).to eq("987654321      ") }
  end

  describe "#emissao_boleto" do
    subject { described_class.new.emissao_boleto("B") }

    it { expect(subject).to eq("B") }
  end

  describe "#data_vencimento" do
    subject { described_class.new.data_vencimento("987654321") }

    it { expect(subject).to eq("98765432") }
  end

  describe "#valor_titulo" do
    subject { described_class.new.valor_titulo("987654321") }

    it { expect(subject).to eq("000000987654321") }
  end

  describe "#agencia" do
    subject { described_class.new.agencia("987654321") }

    it { expect(subject).to eq("98765") }
  end

  describe "#digito_verificador" do
    subject { described_class.new.digito_verificador("98765") }

    it { expect(subject).to eq("9") }
  end

  describe "#especie_titulo" do
    subject { described_class.new.especie_titulo("98765") }

    it { expect(subject).to eq("98") }
  end

  describe "#aceite" do
    subject { described_class.new.aceite }

    it { expect(subject).to eq("N") }
  end

  describe "#data_emissao" do
    subject { described_class.new.data_emissao(82108431331244) }

    it { expect(subject).to eq("82108431") }
  end

  describe "#codigo_juros_mora" do
    subject { described_class.new.codigo_juros_mora(82108431331244) }

    it { expect(subject).to eq("8") }
  end

  describe "#data_juros_mora" do
    subject { described_class.new.data_juros_mora(82108431331244) }

    it { expect(subject).to eq("82108431") }
  end

  describe "#juros_mora" do
    subject { described_class.new.juros_mora(82108431331244) }

    it { expect(subject).to eq("082108431331244") }
  end

  describe "#cod_desconto" do
    subject { described_class.new.cod_desconto(82) }

    it { expect(subject).to eq("8") }
  end

  describe "#data_desconto" do
    subject { described_class.new.data_desconto(82) }

    it { expect(subject).to eq("82      ") }
  end

  describe "#valor_desconto" do
    subject { described_class.new.valor_desconto(820123) }

    it { expect(subject).to eq("000000000820123") }
  end

  describe "#valor_iof" do
    subject { described_class.new.valor_iof(820123) }

    it { expect(subject).to eq("000000000820123") }
  end

  describe "#valor_abatimento" do
    subject { described_class.new.valor_abatimento(820123) }

    it { expect(subject).to eq("000000000820123") }
  end

  describe "#uso_empresa_cedente" do
    subject { described_class.new.uso_empresa_cedente(820123) }

    it { expect(subject).to eq("820123                   ") }
  end

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

  describe "#codigo_baixa_devolucao" do
    subject { described_class.new.codigo_baixa_devolucao }

    it { expect(subject).to eq("2") }
  end

  describe "#prazo_baixa_devolucao" do
    subject { described_class.new.prazo_baixa_devolucao }

    it { expect(subject).to eq("000") }
  end

  describe "#codigo_moeda" do
    subject { described_class.new.codigo_moeda(31234) }

    it { expect(subject).to eq("31") }
  end

  describe "#numero_contrato" do
    subject { described_class.new.numero_contrato(31234) }

    it { expect(subject).to eq("31234     ") }
  end

  describe "#uso_livre" do
    subject { described_class.new.uso_livre(31234) }

    it { expect(subject).to eq("3") }
  end
end
