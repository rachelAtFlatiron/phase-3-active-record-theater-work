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

        #if any of the auditions have hired: true
        if self.auditions.where(hired: true).length > 0
            #return first instance of the audition
            actor = self.auditions.where(hired: true)[0]
            "#{actor.actor} has been hired for #{self.character_name}"
        else  
            "no actor has been hired for this role"
        end 
    end 

    def understudy 
        #if there's more than one role
        if self.auditions.where(hired: true).length > 1
            #return that instance
            actor = self.auditions.where(hired: true)[1]
            "#{actor.actor} is the understudy for #{self.character_name}"
        #else
        else 
            #no actor
            'no actor has been hired for understudy for this role'
        end 
    end 
end


#1. bundle
#2. draw out relationships 
#3. create migrations, fill out columns
#4. db:migrate
#5. make models, associations
#6. fill out seed data
#7. db:seed 
#8. write extra special methods 
#9. test in rake console
#10. hit the bar