

'''

 #####
 #####
 #####

'''

n = 0

def unique_path(r, c, m = dict()):
    global n
    n = n +1
    if r == 1 or c == 1:
        return 1
    cached = m.get((r,c), None)
    if cached:
        return cached
    result = unique_path(r-1, c, m) + unique_path(r, c-1, m)
    m[(r, c)] = result
    return result

result = unique_path(200, 100)
print(result, n)
