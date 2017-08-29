local s = require('slots')

wa = s:register("Water Adventure", 10, 100, 1000, 1)
wa:reconfigure("Water Adventure", 10, 100, 1000, 1)
wa:setBetAmount(20)
wa:debug("Initial Credits: "..user.credits)
for i=1, 10 do
  wa:spin()
end

--[[
--Example 1
local s = require('slots')

wa = s:register("Water Adventure", 10, 100, 1000, 1)
wa:reconfigure("Water Adventure", 10, 100, 1000, 1)
wa:setBetAmount(20)
wa:debug("Initial Credits: "..user.credits)
for i=1, 10 do
  wa:spin()
end

Output:
C:\Users\Chris\Desktop>lua test.lua
[Water Adventure][Debug]        Updated Slot Name: Water Adventure
[Water Adventure][Debug]        Updated Minimum Bet: 10
[Water Adventure][Debug]        Updated Maximum Bet: 100
[Water Adventure][Debug]        Updated Jackpot: 1000
[Water Adventure][Debug]        Updated Jackpot Type: 1
[Water Adventure][Debug]        Initial Credits: 10000
[Water Adventure][Debug]        Winning Numbers: 1:3:1
[Water Adventure][Debug]        Credits: 10000
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 4:3:2
[Water Adventure][Debug]        Try Again :(
[Water Adventure][Debug]        Credits: 10005
[Water Adventure][Debug]        Winning Numbers: 2:4:4
[Water Adventure][Debug]        Credits: 9985
[Water Adventure][Debug]        Win!: 20
[Water Adventure][Debug]        Winning Numbers: 3:1:4
[Water Adventure][Debug]        Try Again :(
[Water Adventure][Debug]        Credits: 10005
[Water Adventure][Debug]        Winning Numbers: 3:3:2
[Water Adventure][Debug]        Credits: 9985
[Water Adventure][Debug]        Win!: 15
[Water Adventure][Debug]        Winning Numbers: 1:1:2
[Water Adventure][Debug]        Credits: 10000
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 1:1:4
[Water Adventure][Debug]        Credits: 10005
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 2:1:1
[Water Adventure][Debug]        Credits: 10010
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 1:2:3
[Water Adventure][Debug]        Try Again :(
[Water Adventure][Debug]        Credits: 10015
[Water Adventure][Debug]        Winning Numbers: 3:3:3
[Water Adventure][Debug]        Credits: 9995
[Water Adventure][Debug]        Win!: 30


--Example 2
require('slots')

wa = slot:register("Water Adventure", 10, 100, 1000, 1)
wa:reconfigure("Water Adventure", 10, 100, 1000, 1)
wa:setBetAmount(20)
wa:debug("Initial Credits: "..user.credits)
for i=1, 10 do
  wa:spin()
end

Output:
C:\Users\Chris\Desktop>lua test.lua
[Water Adventure][Debug]        Updated Slot Name: Water Adventure
[Water Adventure][Debug]        Updated Minimum Bet: 10
[Water Adventure][Debug]        Updated Maximum Bet: 100
[Water Adventure][Debug]        Updated Jackpot: 1000
[Water Adventure][Debug]        Updated Jackpot Type: 1
[Water Adventure][Debug]        Initial Credits: 10000
[Water Adventure][Debug]        Winning Numbers: 1:3:1
[Water Adventure][Debug]        Credits: 10000
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 4:3:2
[Water Adventure][Debug]        Try Again :(
[Water Adventure][Debug]        Credits: 10005
[Water Adventure][Debug]        Winning Numbers: 2:4:4
[Water Adventure][Debug]        Credits: 9985
[Water Adventure][Debug]        Win!: 20
[Water Adventure][Debug]        Winning Numbers: 3:1:4
[Water Adventure][Debug]        Try Again :(
[Water Adventure][Debug]        Credits: 10005
[Water Adventure][Debug]        Winning Numbers: 3:3:2
[Water Adventure][Debug]        Credits: 9985
[Water Adventure][Debug]        Win!: 15
[Water Adventure][Debug]        Winning Numbers: 1:1:2
[Water Adventure][Debug]        Credits: 10000
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 1:1:4
[Water Adventure][Debug]        Credits: 10005
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 2:1:1
[Water Adventure][Debug]        Credits: 10010
[Water Adventure][Debug]        Win!: 5
[Water Adventure][Debug]        Winning Numbers: 1:2:3
[Water Adventure][Debug]        Try Again :(
[Water Adventure][Debug]        Credits: 10015
[Water Adventure][Debug]        Winning Numbers: 3:3:3
[Water Adventure][Debug]        Credits: 9995
[Water Adventure][Debug]        Win!: 30
]]
