require "spec_helper"

describe GoogleMapsAPI::Core::Metric do
  subject { GoogleMapsAPI::Core::Metric.new("1.0 mi", 1) }

  describe "#to_s" do
    it "returns the text" do
      expect(subject.to_s).to eq(subject.text)
    end
  end

  describe "#to_i" do
    it "returns the value" do
      expect(subject.to_i).to eq(subject.value)
    end
  end
end
