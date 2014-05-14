class GoogleMapsAPI::Core::Metric
  attr_reader :text, :value

  def initialize(text, value)
    @text = text.to_s
    @value = value.to_i
  end

  def to_s
    text
  end

  def to_i
    value
  end

  def self.from_hash(hash)
    self.new(hash["text"], hash["value"])
  end
end
