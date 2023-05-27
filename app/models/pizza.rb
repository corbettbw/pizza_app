class Pizza < ApplicationRecord
    validates_uniqueness_of :name
    has_many :toppings
end