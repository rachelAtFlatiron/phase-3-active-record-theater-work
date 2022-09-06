class Audition < ActiveRecord::Base
  belongs_to :role 

  def call_back 
    self.update(hired: true)
    #self.hired = true 
    #self.save
  end 
end

# 1. create migrations, db:create_migration
# 2. make seed data, db:seed
# 3. make models
# 4. make associations (has_many, belongs_to)
# 5. all other methods

# make sure to restart rake c when saving new methods
