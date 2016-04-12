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
						arr = Prueba.new operSize[:instrucciones][0].to_i 
						tempArray = [] #Array to store the updated blocks
						for ope in (0..operSize[:instrucciones][1].to_i-1)
							lec = operSize[:queries][ope] #Read from keyboard the query
							lec = lec.split(" ") #Separates the query value and the (x,y,z) or (x1,y1,z1,x2,y2,z2) for the block
							case lec[0]
							when "UPDATE"
							  arr.update(lec[1].to_i,lec[2].to_i,lec[3].to_i,lec[4].to_i)#Call "update"
							  arreUp = [lec[1].to_i,lec[2].to_i,lec[3].to_i]#Temporal array to store (x,y,z) of an updated block
							  tempArray.push(arreUp) if not tempArray.include? arreUp#check if it already updated that block, if it didn't,
							  #it adds it to the array
							when "QUERY"
								#call "query" and push it to the outPut array in order to have all the resulst and show them at the end
							  outPut.push(arr.query(tempArray,lec[1].to_i,lec[2].to_i,lec[3].to_i,lec[4].to_i,lec[5].to_i,lec[6].to_i))
							else
							  break
							end
						end
					else
						break
					end
				end
			end
		end

	end
	
end

