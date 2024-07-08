s = 'MJMZK CXUNM GWIRY VCPUW MPRRW GMIOP MSNYS RYRAZ PXMCD WPRYE YXD'
sets = set(s)
result = {}
for key in sets:
    result[key] = 0
for c in s:
    if c in sets:
        result[c] += 1

result = {k: v for k, v in 
                  sorted(result.items(), key=lambda item: item[1])}
print(result)