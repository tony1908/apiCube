class Prueba
	def initialize(size)
		@newArray = [] #The fastest way to create a 3D matrix in ruby was by using a gem(ruby library) but I had to install it and 
		#for you guys, it was gonna be a little bit more difficult to run this code so I decided to did it in a craft way
		arrayTemp1 = []
		arrayTemp2 = []
		for x in ((0)..(size-1))#Here I have to iterate through every array to get the 3D matrix
			for y in ((0)..(size-1))
				for z in ((0)..(size-1))
					arrayTemp2.push(0)
				end
				arrayTemp1.push(arrayTemp2)
				arrayTemp2 = []
			end
			@newArray[x] = arrayTemp1
			arrayTemp1 = []
		end	
	end

	def update(x,y,z,value)#This function only sets the new value of block (x,y,z)
		@newArray[x-1][y-1][z-1] = value
	end

	def query(arra2,x1,y1,z1,x2,y2,z2)
		# this function calculates the sum of the numbers but in order to do it faster, I decided to have a temporal array in order to store the 
		# 	blocks that have already been updated and only calculate the sum of those blocks, Doing that, I don't have to iterate 
		# 	through all the elements in the initial array
		temp = 0
		if arra2.size > 0
			arra2.each do |el|
				#Checks if the element can be added to the sum
				if (el[0] >= x1 and el[0] <= x2) and (el[1] >= y1 and el[1] <= y2) and (el[2] >= z1 and el[2] <= z2)
					temp = temp + @newArray[el[0]-1][el[1]-1][el[2]-1]		
				end
			end
		end
		return temp
	end

end