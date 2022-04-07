class PatronusAnimal < ActiveRecord::Base
    has_many :students
end