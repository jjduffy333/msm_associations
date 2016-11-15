class Director < ActiveRecord::Base

  # - title: must be present; must be unique in combination with year
  validates :name, :presence => true, :uniqueness => {:scope => :dob}


#   - name: must be present; must be unique in combination with dob
#   - dob: no rules
#   - bio: no rules
#   - image_url: no rules

end
