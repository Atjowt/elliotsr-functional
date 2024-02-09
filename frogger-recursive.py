n, s, m = map(int, input().split())
nums = [int(s) for s in input().split()]

def frogger(i, h, visited):

    k = nums[i]

    # on magic square
    if k == m:
        return 'magic', h

    # square already visited; cycle
    if visited[i]:
        return 'cycle', h

    # mark square as visited 
    visited[i] = True

    # jump k steps right/left
    i += k
    h += 1

    # fell off left edge
    if i < 0:
        return 'left', h

    # fell off right edge
    if i >= n:
        return 'right', h
    
    return frogger(i, h, visited)

fate, h = frogger(s - 1, 0, [False] * n)
print(fate)
print(h)