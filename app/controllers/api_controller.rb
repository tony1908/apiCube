class ApiController < ApplicationController
	def mainRoute
		
	end

	#Function to create the new 3D matrix 
	def createArray(size)
		a1 = []
		a2 = []
		a3 = []
		for x in ((0)..(size-1))
			for y in ((0)..(size-1))
				for z in ((0)..(size-1))
					a3.push(0)
				end
				a2.push(a3)
				a3 = []
			end
			a1[x] = a2
			a2 = []
		end
		return a1
	end
end

