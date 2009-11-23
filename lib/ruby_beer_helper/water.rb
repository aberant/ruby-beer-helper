class Water
  def initialize( gallons )
    @gallons = gallons
    @malts = []
    @hops = []
  end

  def +( others )
    # only accept array's right now
    others.each do |item|
      case item
      when Malt
        add_malt( item )
      when Hop
        add_hop( item )
      else
        raise "wtf is #{item}?"
      end
    end
    self
  end

  def og
    points = @malts.map{|m| ( m.ppg * m.in_lbs ) / @gallons }.inject(0){ |tally, ppg_times_lbs| tally += ppg_times_lbs}
    (points / 1000) + 1
  end

private
  def add_malt( malt )
    @malts += [malt]
  end

  def add_hop( hop )
    @hops += [hop]
  end
end

class Numeric
  def gallons
    self
  end

  alias :gallon :gallons

  def of_water
    Water.new( self )
  end
end