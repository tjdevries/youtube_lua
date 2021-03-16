
local one_time_iter = coroutine.wrap(function()
  coroutine.yield(1)
  coroutine.yield(2)
  coroutine.yield(3)
  coroutine.yield(nil)
end)

local again_and_again_iter = coroutine.wrap(function()
  while true do
    coroutine.yield(1)
    coroutine.yield(2)
    coroutine.yield(3)
    coroutine.yield(nil)
  end
end)

print("========== one time ===========")
print("one time: 1")
for next_value in one_time_iter do
  print(next_value)
end

print("one time: 2")
for next_value in one_time_iter do
  print(next_value)
end

print("========== again and again ===========")
print("again and again: 1")
for next_value in again_and_again_iter do
  print(next_value)
end

print("again and again: 2")
for next_value in again_and_again_iter do
  print(next_value)
end


print("========== again and again // with break ===========")
print("again and again: 1 // break")
for next_value in again_and_again_iter do
  print(next_value)

  if next_value == 2 then
    break
  end
end

print("again and again: 2 // break")
for next_value in again_and_again_iter do
  print(next_value)
end
