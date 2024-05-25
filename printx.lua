

local function print_table(value, indent)
    indent = indent or 0
    print("{")
    for k,v in pairs(value) do
        if type(k) ==  "number" then
        
            k = "[" .. k .. "]"
        end
        
        if type(v) == "table" then
            io.write(string.rep(" ",indent + 4) .. k .. " = ")
            print_table(v, indent + 4)
        elseif type(v) == "string" then
            print(string.rep(" ",indent + 4) .. k .. " = \"" .. v .. "\"")
        else
            print(string.rep(" ",indent + 4) .. k .. " = " .. v)
        end
    end
    print(string.rep(" ", indent) .. "}")
end

local function print_value(...)
    local arg = table.pack(...)
    local last_print
    for i = 1, arg.n do
        v = arg[i]
        if type(v) == "table" then
            last_print = "table"
            print_table(v)
        elseif type(v) == "string" then
            last_print = "other"
            io.write("\"" .. v .. "\"")
        else
            last_print = "other"
            io.write(v)
        end
        if i ~= arg.n then
            io.write(" ")
        end
    end
    
    if last_print ~= "table" then
        print("")
    end
end

return print_value