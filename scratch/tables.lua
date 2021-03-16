--[[ # Table idioms: Array ]]--

-- Standar array constructor.
local my_array = { "a", "b", "c" }
for index, value in ipairs(my_array) do
  print("index:", index, "value:", value)
end
--[[
index: 1, value: a
index: 2, value: b
index: 3, value: c
--]]

-- Notes:
--  - Indexing starts at 1, not 0

-- the `#` operator is used to get the length of the table.
print(#my_array)  -- 3

-- careful, `nil` values will make this act unexpectedly!
local array_with_nil = {}
array_with_nil[1] = "a"
array_with_nil[2] = "b"
array_with_nil[3] = nil
array_with_nil[4] = "d"
array_with_nil[5] = "e"
print(#array_with_nil)  -- 2


-- number index is not the same as string index
local example = { "hello", "world" }
print(example[1], example["1"]) -- "hello", nil

-- Standard table operations
local array = {}
table.insert(array, "first")
table.insert(array, "second")

print(#array, array[1], array[2]) -- 2, "first", "second"

-- Insert takes an optional second argument, that determines the index to insert at
table.insert(array, 2, "middle")
print(#array, array[1], array[2]) -- 2, "first", "middle"

--[[
- Map / Dictionary
- Set

Checking emptiness -> next(val) == nil
--]]
