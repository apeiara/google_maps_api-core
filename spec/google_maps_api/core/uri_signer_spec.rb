require "spec_helper"

describe GoogleMapsAPI::Core::URISigner do
  subject { GoogleMapsAPI::Core::URISigner }

  describe ".sign" do
    it "returns a signed uri" do
      uri = "http://maps.googleapis.com/maps/api/geocode/json?address=1845,AV+IMPERATRIZ+LEOPOLDINA,05305-007&sensor=false&region=br"
      signed_uri = subject.sign(uri, 'a', 'b', 'c').to_s
      expect(signed_uri).to eq("http://maps.googleapis.com/maps/api/geocode/json?address=1845,AV+IMPERATRIZ+LEOPOLDINA,05305-007&sensor=false&region=br&client=a&channel=c&signature=imI9JSO4iz8RGVeJx_EAmccAnPM=")
    end
  end
end
