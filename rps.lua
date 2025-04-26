local choices = { rock = 0, paper = 1, scissors = 2 }
local names = { [0] = "rock", [1] = "paper", [2] = "scissors" }
local opponent = math.random(3)

local function winner(a, b)
    return a - b % 3 == 1
end

print("Welcome to Rock Paper Scissors!\nChoose Your Move!")
local move = string.lower(io.read("*l"))

local player = choices[move]
if player == nil then
    print("Invalid move")
elseif winner(player, opponent) then
    print("You win! " .. names[player] .. " beats " .. names[opponent])
elseif winner(opponent, player) then
    print("You lose! " .. names[opponent] .. " beats " .. names[player])
else
    print("It's a tie! Both chose " .. names[player])
end
