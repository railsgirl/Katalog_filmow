class Opinion < ApplicationRecord
    belongs_to :movie
    validates :autor_name, presence: true
    validates :autor_surname, presence: true
    validates :rate, presence: true
    validates :comment, presence: true, length: { in: 6..500 }
    #validates :must_be_in_range
end

  
  
    #private
  
    #def must_be_in_range
      #return if rate.include? '@'
      #errors.add :rate, 'must be in range 1-10'
    #end 