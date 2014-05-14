class GoogleMapsAPI::Core::Coordinate
  attr_reader :lat, :lng

  def initialize(lat, lng)
    @lat = lat.to_f
    @lng = lng.to_f
  end

  def latitude
    lat
  end

  def longitude
    lng
  end

  def lon
    lng
  end

  def to_a
    [lat, lng]
  end

  def to_ary
    to_a
  end

  def to_h
    {"lat" => lat, "lng" => lng}
  end

  def self.from_hash(hash)
    self.new(hash["lat"], hash["lng"])
  end

  def self.from_array(array)
    self.new(array[0], array[1])
  end
end
