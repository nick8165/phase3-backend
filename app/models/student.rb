class Student < ActiveRecord::Base
    belongs_to :house
    belongs_to :patronus_animal
end