class Point < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name, :description

  acts_as_gmappable :process_geocoding => false

	def gmaps4rails_address
	#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  	# "#{self.street}, #{self.city}, #{self.country}" 
  	"#{self.address}" 
	end

	#Passar para controller, so funciona ao clicar? No mobile serve
  #Queria passar para um partial, mas n tava a funcionar...
  #Deve haver um truque algures onde possa intervir
	def gmaps4rails_infowindow

      "#{self.description} <img src='http://carplace.virgula.uol.com.br/wp-content/uploads/2011/10/Buraco-II.jpg' alt='img' height='42' width='42'>"
  end



   #  def gmaps4rails_marker_picture
 		# {
  	# 	# "picture" => ,         # string,  mandatory
   # 		# "width" =>  32,        # integer, mandatory
   # 		# "height" => 32,        # integer, mandatory
   # 		# "marker_anchor" => ,   # array,   facultative
   # 		# "shadow_picture" => ,  # string,  facultative
   # 		# "shadow_width" => ,    # string,  facultative
   # 		# "shadow_height" => ,   # string,  facultative
   # 		# "shadow_anchor" => ,   # string,  facultative
   # 		# "rich_marker" =>   ,   # html, facultative
   #      # If used, all other attributes skipped except "marker_anchor". This array is used as follows:
   #      # [ anchor , flat ] : flat is a boolean, anchor is an int. 
   #      # See doc here: http://google-maps-utility-library-v3.googlecode.com/svn/trunk/richmarker/docs/reference.html 
 		# }

 		 # {
    # "rich_marker" =>  "<div class='my-marker'>It works!<img height='30' width='30' src='http://farm4.static.flickr.com/3212/3012579547_097e27ced9_m.jpg'/></div>"
  		# 	}
	# end

end
