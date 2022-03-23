class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods

    has_many :plant_categories
    has_many :categories, through: :plant_categories

    has_many :waterings
    has_many :waterers, through: :waterings


    def number_of_days_since_the_last_watering

        today = DateTime.now
        last = self.waterings.last.updated_at.to_datetime
        num = (today - last).to_i
       
        puts num > 0 ? "I was watered #{num} days ago" : "I was watered today"
        
    end
end