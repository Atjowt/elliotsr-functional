n, s, m = map(int, input().split())
nums = [int(s) for s in input().split()]

i = s - 1
h = 0
visited = [False] * n
while True:

    k = nums[i]

    # on magic square
    if k == m:
        print('magic')
        break

    # square already visited; cycle
    if visited[i]:
        print('cycle')
        break

    # mark square as visited 
    visited[i] = True

    # jump k steps right/left
    i += k
    h += 1

    # fell off left edge
    if i < 0:
        print('left')
        break

    # fell off right edge
    if i >= n:
        print('right')
        break


print(h)