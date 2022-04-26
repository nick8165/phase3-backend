class House < ActiveRecord::Base
    has_many :students
    
    def houses_alphebetically ()
        binding.irb
    end

    
end