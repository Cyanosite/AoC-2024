from collections import Counter
import numpy as np

# part 1
print([sum(abs((np.sort(np.array(a)) - np.sort(np.array(b))))) for a, b in [zip(*[tuple(map(int, line.strip().split())) for line in open("./1/input.txt", "r")])]][0])

# part 2
print([sum(i * Counter(b)[i] for i in a if i in Counter(b)) for a, b in [zip(*[tuple(map(int, line.strip().split())) for line in open("./1/input.txt", "r")])]][0])
