class Topping < ApplicationRecord
    validates_uniqueness_of :name
end
