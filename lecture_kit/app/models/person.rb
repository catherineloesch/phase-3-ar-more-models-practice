class Person < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods

    has_many :waterings
    has_many :waterees, through: :waterings


    def water_plant(plant)
        Watering.create(plant_id: plant.id, person_id: self.id)
        if plant.people.include?(self)
            ph = plant_parenthoods.find_by(plant: plant, person: self)
            affection = ph.affection
            affection = affection ? affection+=1 : 1
            ph.update(affection: affection)
            ph
        end
    end
end

