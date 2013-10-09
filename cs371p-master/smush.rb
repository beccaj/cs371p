contents = ""
dir = "/Users/rebeccajensen/Documents/School/cs371p/midterm/cs371p-master"
quizDir = "quizzes"
exampleDir = "examples"

quizzes = Dir["#{dir}/#{quizDir}/*"]
examples = Dir["#{dir}/#{exampleDir}/*"]

puts "quizzes"
puts quizzes
puts "Examples"
puts examples

quizzes.each do |file|
  contents << File.read(file)
end
examples.each do |file|
  contents << File.read(file)
end

File.open("testStuff.txt", 'w') { |file| file.write(contents) }