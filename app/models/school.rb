class School < ApplicationRecord

    has_many :students

    def to_s
        self.name + ". Located at: " + self.address
    end
end
