class ApiController < ApplicationController
	def mainRoute
		inPut = params[:number].to_i #reads from keyboard and cast it to an integer
		outPut = []#array to store all the results
		if inPut >= 1 and inPut <= 50 #checks if it's a rigth number
			for num in (0..inPut-1)
				
			end
		end

	end
	
end

