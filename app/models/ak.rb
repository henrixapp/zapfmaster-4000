class Ak < ApplicationRecord
  belongs_to :room
  belongs_to :timeslot
  has_many :responsibles
  has_many :persons, :through => :responsibles
  def self.from_js(js,ts)
    ak= Ak.create(timeslot:ts,room:Room.find_or_create_by(name:js["room"]),
    name:js["name"],
     short_name:js["short"],
     url:js["url"])
    p= Person.find_or_create_by(name:js["responsible"])
    Responsible.create(ak:ak,person:p)
    ak
  end
end
