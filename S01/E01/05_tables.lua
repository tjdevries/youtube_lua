local empty_table = {}

local table_with_string_keys = {
  foo = true,
  bar = false,
  nested = {},
}

local key = 25
local table_with_variable_keys = {
  [key] = "<- 25",
  ["hello"] = "world",
  [function() return true end] = "even functions!"
}

-- Why this syntax?

-- Set with a key, these are the same
local tbl = { foo = true }
local tbl = { ["foo"] = true }

-- Access a key, these are the same
print(table_with_string_keys.foo)
print(table_with_string_keys["foo"])

-- Notice:
--  string keys can be accessed directly (no quotes)
--  evaluated keys are expressed with [expression]
