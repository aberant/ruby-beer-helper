require File.join( File.dirname( __FILE__), '..', 'lib','ruby_beer_helper')

extra_lite_dry_extract = 4.lbs.of_malt.with(40.ppg).yield
belgian_2_row = 4.lbs.of_malt.with(28.ppg).yield
aromatic_malt = 2.lbs.of_malt.with(24.ppg).yield
cara_pils = 1.lb.of_malt.with(24.ppg).yield
candy_sugar = 1.lb.of_malt.with(40.ppg).yield

glacier_60_hops = 1.75.oz
glacier_15_hops = 0.25.oz

malts = [ extra_lite_dry_extract,
          belgian_2_row,
          aromatic_malt,
          cara_pils,
          candy_sugar ]

boil = 6.gallons.of_water + malts
puts "OG for boil is estimated to be: #{boil.og}"

