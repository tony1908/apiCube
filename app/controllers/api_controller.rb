class ApiController < ApplicationController
	def mainRoute
		inPut = params[:number].to_i #reads from keyboard and cast it to an integer
		puts inPut
		outPut = []#array to store all the results
		if inPut >= 1 and inPut <= 50 #checks if it's a rigth number
			if params[:lines].size >= inPut
				for num in (0..inPut-1)
					operSize = params[:lines][num]
					if operSize[:instrucciones][1].to_i >= 1 and operSize[:instrucciones][1].to_i <= 1000 #check if it's a rigth size for the array
						
					else
						break
					end
				end
			end
		end

	end
	
end

