local printx = require "printx"


function fn1(...)
    return table.pack(...)
end

printx(fn1(1,2,3,nil,nil))