class Spirit < ActiveRecord::Base
    has_many :cocktails
    has_many :glassware, through: :cocktails
end