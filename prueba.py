import time

x = time.time()
total = 0
for i in range(0,10000000):
    total += i

y = time.time()

print("total = ", total, " time = ", y-x, "s.")
