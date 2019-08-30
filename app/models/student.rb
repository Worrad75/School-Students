class Student < ApplicationRecord

    belongs_to :school

    def to_s
        self.name + ", " + self.age.to_s
    end
end
