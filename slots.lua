slot = {debug=true}
user = {credits = 10000}
_slot = { __index = slot }

function slot:toggleDebugging()
  if not slot.debug then
    slot.debug = true
    slot:debug("Enabled Debugging")
  elseif slot.debug then
    slot.debug = false
    slot:debug("Disabled Debugging")
  end
end

function slot:register(name, min, max, jackpot, jackpottype)
  return setmetatable( {name = name, minbet = min, maxbet = max, jackpot = jackpot, jackpottype = jackpottype}, _slot)
end

function slot:reconfigure(name, min, max, jackpot, jackpottype)
  self:setName(name)
  self:setMinBet(min)
  self:setMaxBet(max)
  self:setJackpot(jackpot)
  self:setjackpotType(jackpottype)
end

function slot:minbet()
  return self.minbet
end

function slot:maxbet()
  return self.maxbet
end

function slot:name()
  return self.name
end

function slot:jackpot()
  return self.jackpot
end

function slot:jackpottype()
  return self.name
end

function slot:setMinBet(x)
  self.minbet = x
  return self:debug('Updated Minimum Bet: '..x)
end

function slot:setMaxBet(x)
  self.maxbet = x
  return self:debug('Updated Maximum Bet: '..x)
end

function slot:setName(x)
  self.name = x
  return self:debug('Updated Slot Name: '..x)
end

function slot:setJackpot(x)
  self.jackpot = x
  return self:debug('Updated Jackpot: '..x)
end
function slot:setjackpotType(x)
  self.jackpottype = x
  return self:debug('Updated Jackpot Type: '..x)
end

function slot:debug(...)
  if not slot.debug then return false end
  if type(self.name) == "string" then
    return print('['..self.name..']'..'[Debug]',...)
  else
    return print('[Slots]'..'[Debug]',...)
  end
end

function slot:betamount()
  return self.betamount
end

function slot:setBetAmount(x)
  if user.credits < x then return self:debug("Not enough credits") end
  self.betamount = x
end

function slot:spin()
  local w1,w2,w3 = math.random(1,4), math.random(1,4), math.random(1,4)
  if (self.betamount < self.minbet or self.betamount > self.maxbet) or user.credits < self.betamount then
    return self:debug("Invalid Bet Amount!")
  else
    self:debug("Winning Numbers: "..w1..":"..w2..":"..w3)
    if self:checkWin(w1,w2,w3) then
      self:debug("Credits: "..user.credits)
      self:debug("Win!: "..select(2, self:checkWin(w1,w2,w3)))
      user.credits = user.credits + select(2, self:checkWin(w1,w2,w3))
    else
      self:debug("Try Again :(")
      self:debug("Credits: "..user.credits)
      user.credits = user.credits - self.betamount
    end
  end
end

function slot:checkWin(a,b,c)
  local matches
  if a==b and b==c then
    return true, ((a * .5) * self.betamount)
  elseif (a==b or b==c) then
    return true, ((b * .25) * self.betamount)
  elseif a==c  then
    return true, ((a * .25) * self.betamount)
  else
    return false
  end
end

wa = slot:register("Water Adventure", 10, 100, 1000, 1)
wa:reconfigure("Water Adventure", 10, 100, 1000, 1)
wa:setBetAmount(20)
wa:debug("Initial Credits: "..user.credits)
for i=1, 10000 do
  wa:spin()
end
