class Glassware < ActiveRecord::Base
    has_many :cocktails
    has_many :spirits, through: :cocktails
end