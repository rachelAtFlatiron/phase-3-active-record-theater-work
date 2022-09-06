class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        self.auditions.pluck(:actor)
    end 

    def locations 
        self.auditions.pluck(:location)
    end 

    def lead 
        #role.auditions.where("hired = 'true'")
        if self.auditions.where("hired = ?", "true").exists?
            return something
        else  
            "no actor has been hired for this role"
        end 
    end 
end