require 'terminfo'
require 'awesome_print'

info = TermInfo.screen_size
puts "this is the initial terminal size #{info} "  
 

presentation = IO.read('presentation.txt').split("----\n")
# puts presentation

sizes = presentation.map do |slide|
	
	x = slide.length
end
puts "this is the sizes array ----> #{sizes}"
half_height = info[0]/2
half_width = (info[1] - sizes.shift)/2 #NEED TO MAKE HALF_width WITH SWITCH WITH EVRY INSTANCE
puts "This is half of the height #{half_height} "   
puts "this is half the width - length of string #{half_width} "  

puts "this is the new sizes array ----> #{sizes}" 


class TerminalCenter 

	def initialize(half_height, half_width, slide)
		@half_height = half_height
		@half_width	= half_width
		@slide = slide 
	end

	def centered
		width_spacer = (" " * @half_width) + @slide 
		height_spacer = "\n" * @half_height
		final = height_spacer + width_spacer

		# i = 0

		# begin 
		# 	width_spacer += " "
		# 	i += 1
		# end until i > @half_width

		# begin 
		# 	height_spacer += "\n"
		# 	i += 1
		# end until i > @half_height	
	end
end



# presentation.each do |slide| 
# 	x = TerminalCenter.new(half_height, half_width, slide).centered #why do I have to store in a varable?
# 	puts x

# 	# slide.centered(slide) #can you pass variable as parameter?
# end

slide1 = presentation[0]
slide2 = presentation[1]
slide3 = presentation[2]

x = TerminalCenter.new(half_height, half_width, slide1).centered

y = TerminalCenter.new(half_height, half_width, slide2).centered

z = TerminalCenter.new(half_height, half_width, slide3).centered

display = [x,y,z]
puts display.shift
puts "--->"
promptResponse = gets.chomp

if promptResponse != "next" 
	puts "enter next to see the see more"

else 
	puts display.shift
	puts "--->"
	secondPromptResponse = gets.chomp
end

if secondPromptResponse == "next"
	puts display.shift
	puts "\n\n\n\nFIN"

end 





# have figure out how to pass the slide to the centered function and to line 21