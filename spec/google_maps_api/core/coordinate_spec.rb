require "spec_helper"

describe GoogleMapsAPI::Core::Coordinate do

  subject { GoogleMapsAPI::Core::Coordinate.new(1.0, -1.0) }

  describe "#latitude" do
    it "returns lat" do
      expect(subject.latitude).to eq(subject.lat)
    end
  end

  describe "#longitude" do
    it "returns lng" do
      expect(subject.longitude).to eq(subject.lng)
    end
  end

  describe "#to_a" do
    it "returns an array" do
      expect(subject.to_a).to eq([subject.lat, subject.lng])
    end
  end

  describe "#to_h" do
    it "returns a hash" do
      expect(subject.to_h).to eq({"lat" => subject.lat, "lng" => subject.lng})
    end
  end

  describe ".from_hash" do
    subject { GoogleMapsAPI::Core::Coordinate }

    it "returns a new coordinate" do
      expect(subject.from_hash({"lat" => 1.0, "lng" => 1.0})).to be_a(subject)
    end
  end

  describe ".from_array" do
    subject { GoogleMapsAPI::Core::Coordinate }
    
    it "returns a new coordinate" do
      expect(subject.from_array([1.0, 1.0])).to be_a(subject)
    end
  end
end
