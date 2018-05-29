class Timeslot < ApplicationRecord
    def self.from_js(js)
        t= Timeslot.create(name:js["name"],
            begin_humanized:js["begin"],
        end_humanized:js["end"],
        ende:js["finished"],
        typus:js["type"],
        beginn:Time.at(js["timestamp"]),
        ende:js["finish"])
        if not js["aks"].nil?
        js["aks"].each do |ak|
            Ak.from_js(ak,t)
        end
    end
    end
    def self.import(all)
        all["slots"].each do |ts|
            Timeslot.from_js(ts)
        end
    end
end
