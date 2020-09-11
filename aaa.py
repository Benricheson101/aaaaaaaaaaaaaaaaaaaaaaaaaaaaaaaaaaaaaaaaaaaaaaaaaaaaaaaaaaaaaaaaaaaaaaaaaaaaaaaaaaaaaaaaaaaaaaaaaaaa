a = 0
aa = 'a'
while True:
    a += 1
    if a == 1000:
        a = 0
        aa = aa + 'a'
    print(aa, end='')
