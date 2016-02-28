class Shipment < ActiveRecord::Base
  include AASM

  aasm do
    state :in_usa, :initial => true
    state :at_border
    state :in_canada

    event :enter_canada do
      transitions :from => :at_border, :to => :in_canada
    end

    event :enter_usa do
      transitions :from => :at_border, :to => :in_usa
    end

    event :approach_border do
      transitions :from => [:in_usa, :in_canada], :to => :at_border
    end
  end
end
