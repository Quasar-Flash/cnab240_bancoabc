# frozen_string_literal: true

require "spec_helper"

describe CNAB240::BancoABC::Services::ParseLine do
  context "when it receives a line and pass type 0" do
    it "returns a Header" do
      line = described_class.call("00000", "0")

      expect(line.header?).to be(true)
    end
  end

  context "when it receives a line and pass type 1" do
    it "returns a Register T format" do
      line = described_class.call("00000000000000T", "1")

      expect(line.register?).to be(true)
    end
  end

  context "when it receives a line and pass type 2" do
    it "returns a Register U format" do
      line = described_class.call("00000000000000U", "2")

      expect(line.register?).to be(true)
    end
  end

  context "when it receives a line and pass type 9" do
    it "returns a Trailler" do
      line = described_class.call("90000", "9")

      expect(line.trailler?).to be(true)
    end
  end
end
