class Pizza < ApplicationRecord
    validates_uniqueness_of :name
end