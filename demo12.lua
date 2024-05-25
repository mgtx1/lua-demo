local printx = require "printx"

function add(...)
    local s = 0
    for i=1, select("#",...) do
        s = s + select(i, ...)
    end
    return s
end

printx(add(1,1,1,1))