#Part 4: Basic OOP
#(a) Create a class Dessert with getters and setters for name and calories. Define
#instance methods healthy?, which returns true if a dessert has less than 200
#calories, and delicious?, which returns true for all desserts.
#(b) Create a class JellyBean that extends Dessert, and add a getter and setter for
#flavor. Modify delicious? to return false if the flavor is black licorice (but delicious?
#should still return true for all other flavors and for all non-JellyBean desserts).
#Here is the framework (you may define additional helper methods):

class Dessert
  def initialize(name, calories)
    @name, @calories = name, calories
  end

  attr_accessor :name, :calories

  def healthy?
    calories < 200 ? true : false
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end

  attr_accessor :flavor

  def delicious?
    flavor == "black licorice" ? false : super
  end
end

