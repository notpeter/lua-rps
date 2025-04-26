local moves = { "rock", "paper", "scissors" }
local number = math.random(1, 3)
print("Welcome to Rock Paper Scissors!\nChoose Your Move!")
local move = string.lower(io.read("*l"))
if move == "rock" then
    if number == 1 then
        print("Tie!")
    elseif number == 2 then
        print("You Lose!")
    else
        print("You Win!")
    end
end

if move == "paper" then
    if number == 1 then
        print("You Win!")
    elseif number == 2 then
        print("Tie!")
    else
        print("You Lose!")
    end
end

if move == "scissors" then
    if number == 1 then
        print("You Lose!")
    elseif number == 2 then
        print("You Win!")
    else
        print("You Lose!")
    end
end

print(moves[number])
