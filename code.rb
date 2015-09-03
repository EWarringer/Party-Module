module PartyGoer
  attr_accessor :drinks
  def initialize
    @drinks = 0
  end

  def drink
    if @drinks < 2
      @drinks += 1
      true
    else
      false
    end
  end

  def sing
    "lallalaiiiiiii ffrreeeeeeebiiiirrd!"
  end

  def cause_havoc
      raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
    base.extend(NewModule)
  end

  module NewModule
    def invited?
      true
    end
  end
end

class PersonalizedHavocError < StandardError
end
