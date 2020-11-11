# your code goes here
require 'pry'


class Person
    attr_accessor :name
    @@people = []
  
    def initialize(name)
      @name = name
      # self in the initialize method is our new instance
      # self.class is Person
      # self.class.all == Person.all
      self.class.all << self
    end
  
    def self.all
      @@people
    end
  
    def self.find_by_name(name)
      self.all.find{|person| person.name == name}
    end
  binding.pry
  end