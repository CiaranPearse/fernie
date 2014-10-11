class Recipe < ActiveRecord::Base
  belongs_to :publisher
  belongs_to :diet
  belongs_to :course
  belongs_to :ease
end
