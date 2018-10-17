require 'pry'
class Deli
  @@counter = 1
  katz_deli = []
  
  def line(katz_deli)
    if katz_deli.size == 0 
      puts "The line is currently empty."
    else
      new_array = []
      katz_deli.each_with_index do |name, index|
        new_array.push(" #{index + 1}. #{name}")
      end 
      vary = new_array.join
      puts "The line is currently:#{vary}"
    end
  end
  
  # def take_a_number(katz_deli, name)
  #   katz_deli.push(name)
  #   puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  # end
  
  def now_serving(katz_deli)
    if katz_deli.size == 0 
      puts "There is nobody waiting to be served!"
    else
      puts "Currently serving #{katz_deli[0]}."
      katz_deli.shift
    end
  end 
  
  def take_a_number(katz_deli)
    katz_deli.push(@@counter)
    puts "Welcome, your ticket number is #{@@counter}. You are number #{katz_deli.length} in line."
    @@counter += 1 
  end
end
new_deli = Deli.new
new_deli.take_a_number([])
new_deli.take_a_number([1])
new_deli.now_serving([1,2])
new_deli.take_a_number([2])
