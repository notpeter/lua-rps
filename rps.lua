local choices = { rock = 0, paper = 1, scissors = 2 }
local names = { [0] = "rock", [1] = "paper", [2] = "scissors" }

local function winner(a, b)
    return a - b % 3 == 1
end

print("Welcome to Rock Paper Scissors!")

while true do
    print("\nChoose Your Move!")
    local move = string.lower(io.read("*l"))
    local opponent = math.random(3)

    local player = choices[move]
    if player == nil then
        print("Invalid move")
    elseif winner(player, opponent) then
        print(string.format("You win! %s beats %s.", names[player], names[opponent]))
    elseif winner(opponent, player) then
        print(string.format("You lose! %s beats %s.", names[opponent], names[player]))
    else
        print(string.format("It's a tie! Both chose %s.", names[player]))
    end
end
