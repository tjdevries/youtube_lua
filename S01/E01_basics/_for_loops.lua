-- Numeric for loop
--  variable = start, end, step
--
-- NOTE: "end" is inclusive
for i = 1, 10 do
  print("i:", i)
end

--[[
i: 1
i: 2
i: 3
i: 4
i: 5
i: 6
i: 7
i: 8
i: 9
i: 10
--]]

-- Iterator for loop
for index, value in ipairs({"foo", "bar", "baz"}) do
  print(index, value)
end
--[[
1 foo
2 bar
3 baz
--]]

-- or

for key, value in pairs({ foo = 1, bar = "hello", baz = true}) do
  print(key, value)
end
--[[
foo 1
bar "hello"
baz true
--]]
