class Timeslot < ApplicationRecord
    def self.from_js(js)
        Timeslot.create(name:js["name"],
            begin_humanized:js["begin"],
        end_humanized:js["end"],
        ende:js["finished"],
        typus:js["type"],
        beginn:Time.at(js["timestamp"]),
        ende:js["finish"])
    end
end
