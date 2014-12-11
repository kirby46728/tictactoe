
def displayBoard(board)
for x in 0..2
for y in 0..2
print board[x][y]
end
print"\n"
end
puts "\n"
return nil
end
isVictorious = false
board = Array[["[ ]","[ ]", "[ ]"],["[ ]", "[ ]","[ ]"],["[ ]","[ ]","[ ]"]]
playerturn = true
while isVictorious == false
player = "[X]"
cpu = "[O]"
for x in 0..2
for y in 0..2
print board[x][y]
end
print "\n"
end
print "\n"
puts "Please put in a row number"
row = gets.chomp.to_i
puts "Please put in a column number"
column  = gets.chomp.to_i

if board[row][column]== "[X]" || board[row][column]== "[O]"
puts "That's an invalid move. You gotta re run the game :P"
break
end

board[row][column]=player

for x in 0..2
for y in 0..2
print board[x][y]
end
print "\n"
end
puts "\n"
z = 0
for x in 0..2
for y in 0..2
if board[x][y]== "[ ]"
z+=1
end
end
end
if z == 0
puts "Tied Game"
isVictorious = true
end

if board[0][0] == "[X]" && board[0][1] == "[X]" && board[0][2] == "[X]"
puts "YOU WON"
isVictorious=true
break
end
if board[1][0] == "[X]" && board[1][1]== "[X]" && board[1][2]== "[X]"
puts "YOU WON"
isVictorious = true
break
end
if board[2][0]== "[X]"&& board[2][1]== "[X]" && board[2][2] == "[X]"
puts "YOU WON"
isVictorious = true
break
end
if board[0][0]== "[X]" && board[1][0]=="[X]" && board[2][0] == "[X]"
puts "YOU WON"
isVictorious = true
break
end
if board[0][1]=="[X]"&& board[1][1]== "[X]" && board[2][1] == "[X]"
puts "YOU WON"
isVictorious = true
break
end
if board[0][2]=="[X]"&& board[1][2]== "[X]" && board[2][2] == "[X]"
puts "YOU WON"
isVictorious = true
break
end
if board[0][0]=="[X]"&& board[1][1]=="[X]" && board[2][2]== "[X]"
puts "YOU WON"
isVictorious = true
break
end
if board[0][2]=="[X]"&&board[1][1]=="[X]"&& board[2][0] == "[X]"
puts "YOU WON"
isVictorious = true
break
end





cpucheck = true
for x in 0..2
if board[x][0]=="[O]"&& board[x][1]=="[O]"&& board[x][2]=="[ ]"
board[x][2]=cpu
cpucheck=false
break
elsif board[x][0]=="[ ]"&& board[x][1]=="[O]"&& board[x][2]=="[O]"
board[x][0]=cpu
cpucheck=false
break
elsif board[x][0]=="[O]" && board[x][1]=="[ ]" && board[x][2]=="[O]"
board[x][1]=cpu
cpucheck=false
break
end
end

if cpucheck==true
for y in 0..2
if board[0][y]=="[O]" && board[1][y]=="[O]" && board[2][y]=="[ ]"
board[2][y]=cpu
cpucheck=false
break
elsif board[0][y]=="[ ]" && board[1][y]=="[O]" && board[2][y]=="[O]"
board[0][y]=cpu
cpucheck=false
break
elsif board[0][y]=="[O]" && board[1][y]=="[ ]" && board[2][y]=="[O]"
board[1][y]=cpu
cpucheck=false
break
end
end
end

if cpucheck == true
if board[0][2]== "[O]" && board[1][1] == "[O]" && board[2][0]== "[ ]"
board[2][0]=cpu
cpucheck=false
elsif board[0][2]== "[ ]" && board[1][1] == "[O]" && board[2][0] == "[O]"
board[0][2]=cpu
cpucheck=false
elsif board[0][2]== "[O]" && board[1][1] == "[ ]" && board[2][0]== "[O]"
board[1][1]=cpu
cpucheck=false
elsif board[0][0]== "[O]" && board[1][1] == "[O]" && board[2][2]== "[ ]"
board[2][2]=cpu
cpucheck=false
elsif board[0][0] == "[ ]" && board[1][1] == "[O]" && board[2][2] == "[O]"
board[0][0]=cpu
cpucheck=false
elsif board[0][0]== "[O]" && board[1][1]== "[ ]"&& board[2][2] == "[O]"
board[1][1]=cpu
cpucheck=false
end
end


if cpucheck==true
for x in 0..2
if board[x][0] == "[X]" && board[x][1] == "[X]" && board[x][2] == "[ ]"
board[x][2]=cpu
cpucheck=false
break
elsif board[x][0] == "[ ]" && board[x][1]== "[X]" && board[x][2]=="[X]"
board[x][0]=cpu
cpucheck=false
break
elsif board[x][0]== "[X]" && board[x][1]== "[ ]" && board[x][2]=="[X]"
board[x][1]=cpu
cpucheck=false
break
end
end
end

if cpucheck==true
for y in 0..2
if board[0][y] == "[X]" && board[1][y] == "[X]" && board[2][y] == "[ ]"
board[2][y]=cpu
cpucheck=false
break
elsif board[0][y] == "[ ]" && board[1][y] == "[X]" && board[2][y] == "[X]"
board[0][y]=cpu
cpucheck=false
break
elsif board[0][y]== "[X]" && board[1][y]== "[ ]" && board[2][y]== "[X]"
board[1][y]=cpu
cpucheck=false
break
end
end
end

if cpucheck == true
if board[0][2]== "[X]" && board[1][1] == "[X]" && board[2][0]== "[ ]"
board[2][0]=cpu
cpucheck=false
elsif board[0][2]== "[ ]" && board[1][1] == "[X]" && board[2][0] == "[X]"
board[0][2]=cpu
cpucheck=false
elsif board[0][2]== "[X]" && board[1][1] == "[ ]" && board[2][0]== "[X]"
board[1][1]=cpu
cpucheck=false
elsif board[0][0]== "[X]" && board[1][1] == "[X]" && board[2][2]== "[ ]"
board[2][2]=cpu
cpucheck=false
elsif board[0][0] == "[ ]" && board[1][1] == "[X]" && board[2][2] == "[X]"
board[0][0]=cpu
cpucheck=false
elsif board[0][0]== "[X]" && board[1][1]== "[ ]"&& board[2][2] == "[X]"
board[1][1]=cpu
cpucheck=false
end
end



if cpucheck==true
stop=false
for x in 0..2
for y in 0..2
if board[x][y] == "[ ]"
board[x][y]=cpu
stop = true
break
end
end
if stop == true
break
end
end
end

if board[0][0] == "[O]" && board[0][1] == "[O]" && board[0][2] == "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[1][0] == "[O]" && board[1][1]== "[O]" && board[1][2]== "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[2][0]== "[O]"&& board[2][1]== "[O]" && board[2][2] == "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[0][0]== "[O]" && board[1][0]=="[O]" && board[2][0] == "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[0][1]=="[O]"&& board[1][1]== "[O]" && board[2][1] == "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[0][2]=="[O]"&& board[1][2]== "[O]" && board[2][2] == "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[0][0]=="[O]"&& board[1][1]=="[O]" && board[2][2]== "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end
if board[0][2]=="[O]"&&board[1][1]=="[O]"&& board[2][0] == "[O]"
displayBoard(board)
puts "The computer won :("
isVictorious = true
end

end

