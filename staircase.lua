local counter = 0

function path(n, m)
  counter = counter + 1
  if counter % 1000 == 0 then print(counter) end
  m = m or {}
  if m[n] then
    return m[n]
  end
  if n == 1 then
    return 1
  end
  if n == 2 then
    return 2
  end
  if n == 3 then
    return 4
  end

  result = path(n-1, m) + path(n-2, m) + path(n-3, m)
  m[n] = result
  return result
end

local n = arg[1]
print(string.format("résultat: %d, nb d'appels : %d", path(n), counter))
