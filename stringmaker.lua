--Word seperator (Keep in mind, each word has to have a space inbetween them to create a new string for the table!)
words = "word word word word word "
p = ""
t = {}
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
  print(v)
end

--Character seperator (This will seperate any character in the chars area into seperate strings for the table!)

chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=[]\':;?/>.<,|}{+_)(*&^%$#@!`~"
p = ""
t = {}
for i = 1, #chars do
  local c = chars:sub(i,i)
  p = c
  p = '"' .. p .. '", '
  table.insert(t, p)
  p = ""
  end
end
for k, v in ipairs(t) do 
  print(v)
end
