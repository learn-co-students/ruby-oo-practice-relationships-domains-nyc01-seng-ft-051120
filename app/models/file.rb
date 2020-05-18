# create files for your ruby classes in this directory


@montreal_house = Listing.new("montreal")
@brooklyn_house = Listing.new("brooklyn")
@toronto_house = Listing.new("toronto")

@steve = Guest.new("steve")
@xiaoyu = Guest.new("xiaoyu")
@marius = Guest.new("marius")

@trip1 = Trip.new(@montreal_house, @xiaoyu)
@trip2 = Trip.new(@montreal_house, @marius)
@trip3 = Trip.new(@brooklyn_house, @xiaoyu)
@trip4 = Trip.new(@montreal_house, @xiaoyu)
@trip5 = Trip.new(@montreal_house, @marius)
@trip6 = Trip.new(@brooklyn_house, @steve)
@trip7 = Trip.new(@toronto_house, @steve)



