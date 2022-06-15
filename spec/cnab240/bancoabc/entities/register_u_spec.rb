# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::RegisterU do
  let(:header) { Array.new(13) { rand(10) }.join }
  let(:segmento) { Array.new(1) { rand(10) }.join }
  let(:segmento_space) { Array.new(3) { rand(10) }.join }
  let(:acrescimos) { Array.new(15) { rand(10) }.join }
  let(:valor_desconto) { Array.new(15) { rand(10) }.join }
  let(:valor_abatimento) { Array.new(15) { rand(10) }.join }
  let(:valor_iof) { Array.new(15) { rand(10) }.join }
  let(:valor_pago) { Array.new(15) { rand(10) }.join }
  let(:valor_liquido) { Array.new(15) { rand(10) }.join }
  let(:valor_outras_despesas) { Array.new(15) { rand(10) }.join }
  let(:valor_outros_creditos) { Array.new(15) { rand(10) }.join }
  let(:data_ocorrencia) { Array.new(8) { rand(10) }.join }
  let(:data_credito) { Array.new(8) { rand(10) }.join }

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

    it {
      expect(subject).to eq({
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
                            })
    }
  end
end
