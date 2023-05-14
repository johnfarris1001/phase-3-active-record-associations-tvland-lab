class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        list = []
        self.actors.each do |actor|
            list << "#{actor.first_name} #{actor.last_name}"
        end
        list
    end
end