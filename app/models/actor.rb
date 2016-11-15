class Actor < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => {:scope => :dob}

  belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id" )

  has_many(:movie, :class_name => "Movie", :foreign_key => "movie_id")

end
