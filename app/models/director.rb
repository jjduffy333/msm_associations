class Director < ActiveRecord::Base

  # - title: must be present; must be unique in combination with year
  validates :name, :presence => true, :uniqueness => {:scope => :dob}

  belongs_to(:movies, :class_name => "Director", :foreign_key => "director_id" )

  has_many(:movies, :class_name => "Movie", :foreign_key => "movie_id")


#   - name: must be present; must be unique in combination with dob
#   - dob: no rules
#   - bio: no rules
#   - image_url: no rules

end
