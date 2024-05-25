local file = io.open("1.txt", "w") -- "w" 表示写模式，会覆盖已存在的文件
if file then
    file:close()
else
    print("文件创建失败")
end
