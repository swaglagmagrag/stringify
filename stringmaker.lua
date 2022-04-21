--Word seperator (Keep in mind, each word has to have a space inbetween them to create a new string for the table!)
local words = "word word word word word "
local p = ""
local t = {}
for i = 1, #words do
  local c = words:sub(i,i)
  if c == " " then
    p = '"' .. p .. '", '
    table.insert(t, p)
    p = ""
  else
    p = p .. c
  end
end
for k, v in ipairs(t) do 
  io.write(v)
end

--Character seperator (This will seperate any character in the chars area into seperate strings for the table!)

local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=[]\':;?/>.<,|}{+_)(*&^%$#@!`~"
local p = ""
local t = {}
for i = 1, #chars do
  local c = chars:sub(i,i)
  p = '"' .. p .. '", '
  table.insert(t, p)
  p = ""
  end
end
for k, v in ipairs(t) do 
  io.write(v)
end
