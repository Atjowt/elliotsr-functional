def dfs(n):
    if n == 1:
        # root node; label = 1/1
        return (1, 1)
    if n % 2 == 0:
        # left child; parent = n / 2
        p, q = dfs(n // 2)
        return (p, p + q)
    else:
        # right child; parent = (n - 1) / 2
        p, q = dfs((n - 1) // 2)
        return (p + q, q)

P = int(input())
for _ in range(P):
    K, N = map(int, input().split())
    p, q = dfs(N)
    print(K, f'{p}/{q}')