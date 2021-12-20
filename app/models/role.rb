class Role < ActiveRecord::Base
    has_many :auditions

    def actors
      self.auditions.map{ |a| a.actor }
    end

    def locations
      self.auditions.map{ |a| a.location }
    end

    def lead
      leadActor = self.auditions.find{ |a| a.hired == true }
      leadActor || "no actor has been hired for this role"
    end

    def understudy
      secondaryActor = self.auditions.filter{ |a| a.hired == true }[1]
      secondaryActor || "no actor has been hired for understudy for this role"
    end
end