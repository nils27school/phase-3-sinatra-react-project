class Cocktail < ActiveRecord::Base
    belongs_to :spirit
    belongs_to :glassware
end