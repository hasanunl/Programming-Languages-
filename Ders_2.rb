class Array

def array_training
array_1 = Array.new
p array_1
array_2 = Array.new(5)
p array_2
array_3 = Array.new(5,"Empty")
p array_3
array_4 = [3,"two",5.5,4000]
p array_4
array_4.unshift(0,5,9)
p array_4
array_4.shift
p array_4
array_4.concat(array_3)
p array_4
array_4.concat([30,20,50])
p array_4
array_4.push(100,200)
array_4.pop
p array_4
puts "Array size " + array_4.size().to_s
puts "Array contains 100 " + array_4.include?(200).to_s
puts "How many 100? " + array_4.count(100).to_s
puts "Is my array empty? " + array_4.empty?.to_s
p array_4
puts array_4.join(",")
array_4.each do |value|
  puts value
end
end
end

array = Array.new()
#puts array.array_training

class Menu
  include Enumerable

  def each
    yield "Spaghetti"
    yield "Hamburger"
    yield "Water"
    yield "Cola"
  end
end

menuOptions = Menu.new
menuOptions.each do |item|
  puts item

end

myfile = File.new("training.txt","w")
myfile.puts "Bu yazı ruby ile yazıldı."
myfile.close
puts File.read("training.txt")

myfile = File.new("training.txt","a")
myfile.puts "Yeni ekleme"
myfile.close
puts File.read("training.txt")


