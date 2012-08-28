class Address < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :city, :country, :postal_code, :state, :telephone_number, :full_address, :latitude, :longitude, :gmaps, :category_id
  attr_accessor :gmaps

  geocoded_by :full_address

  after_validation :geocode

  acts_as_gmappable


  def full_address
    [self.address_line_1, self.address_line_2, self.city, self.state, self.country, self.postal_code].compact.join(", ")
  end

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
      full_address
  end

  def gmaps4rails_infowindow
      "#{full_address}"
  end

  def gmaps4rails_title
      # add here whatever text you desire
      "Testing"
  end

  def gmaps4rails_marker_picture
    {
     "picture" => "/assets/icon-1.png",
     "width" => 30,
     "height" => 30,
     "marker_anchor" => [ 5, 10],
     "shadow_width" => "110",
     "shadow_height" => "110",
     "shadow_anchor" => [5, 10]
    }
  end


end
