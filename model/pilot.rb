class Pilot
  has_many :flights
  has_many :travelers, through: :flights
end
