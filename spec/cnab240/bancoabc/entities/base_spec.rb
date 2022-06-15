# frozen_string_literal: false

require "spec_helper"

describe CNAB240::BancoABC::Entities::Base do
  describe "#header?" do
    subject { described_class.new.header? }

    it { expect(subject).to be_falsey }
  end

  describe "#trailler?" do
    subject { described_class.new.trailler? }

    it { expect(subject).to be_falsey }
  end

  describe "#register?" do
    subject { described_class.new.register? }

    it { expect(subject).to be_falsey }
  end

  describe "#white_space" do
    subject { described_class.new.send(:white_space, 3) }

    it { expect(subject).to eq("   ") }
  end

  describe "#prepend_zero" do
    subject { described_class.new.send(:prepend_zero, data, range) }

    context "when data is null" do
      let(:data) { nil }
      let(:range) { 2 }

      it { expect(subject).to eq("  ") }
    end

    context "when data has the same length as range" do
      let(:data) { "10" }
      let(:range) { 2 }

      it { expect(subject).to eq(data) }
    end

    context "when data has the length greater than range" do
      let(:data) { "10" }
      let(:range) { 2 }

      it { expect(subject).to eq(data) }
    end

    context "when range has the length greater than data" do
      let(:data) { "010" }
      let(:range) { 3 }

      it { expect(subject).to eq("#{data}") }
    end
  end

  describe "#append_space" do
    subject { described_class.new.send(:append_space, data, range) }

    context "when data is null" do
      let(:data) { nil }
      let(:range) { 2 }

      it { expect(subject).to eq("  ") }
    end

    context "when data has the same length as range" do
      let(:data) { "10" }
      let(:range) { 2 }

      it { expect(subject).to eq(data) }
    end

    context "when data has the length greater than range" do
      let(:data) { "101" }
      let(:range) { 2 }

      it { expect(subject).to eq("10") }
    end

    context "when range has the length greater than data" do
      let(:data) { "10" }
      let(:range) { 3 }

      it { expect(subject).to eq("#{data} ") }
    end
  end
end
