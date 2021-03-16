-- Normally, to loop over tables,
-- you'd use pairs and iterate over all the keys & values.
for key, value in pairs({ foo = 1, bar = "hello", baz = true}) do
  print(key, value)
end


-- But what if you wanted some keys hidden?
--  This is where iterators come into play.


-- my_iter hides any key that starts with "_"
local my_coroutine_iter = function(tbl)
  return coroutine.wrap(function()
    for k, v in pairs(tbl) do
      if k:sub(1, 1) ~= "_" then
        coroutine.yield(k, v)
      end
    end
  end)
end

local my_iter = function(tbl)
  local key, value = nil, nil
  return function()
    repeat
      key, value = next(tbl, key)

      if key and key:sub(1, 1) ~= "_" then
        return key, value
      end
    until key == nil
  end
end

print("Starting my_iter: won't print '_hidden'")
for k, v in my_iter({_hidden = true, visible = true }) do
  print(k, v)
end
--[[
visible true
--]]

for k, v in my_coroutine_iter({_hidden = true, visible = true }) do
  print(k, v)
end
--[[
visible true
--]]
