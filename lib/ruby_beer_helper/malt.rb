class Malt
  def initialize( grams )
    @grams = grams
    @ppg = 0
  end

  def with( ppg )
    @ppg = ppg
    self
  end

  def ppg
    @ppg
  end

  def yield
    self
  end

  def in_lbs
    @grams.in_lbs
  end

end

class Weight
  def of_malt
    Malt.new( self.in_grams )
  end
end

class Numeric
  def ppg; self; end
end