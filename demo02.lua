local u = require("printx")

local arr = {
    "haha";
    nil,
    123
}

-- u.print_value(#arr)

for i, v in ipairs(arr) do
    u.print_value(i, v)
end


u.print_value(123, "你哈", {a = 2, {a = 888}})
