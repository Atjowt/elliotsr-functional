-- https://open.kattis.com/problems/rationalsequence3

dfs :: Int -> (Int, Int)
dfs n
    | n == 1 = (1, 1)
    | even n = let (p, q) = dfs (div n 2) in (p, p + q)
    | odd  n = let (p, q) = dfs (div (n - 1) 2) in (p + q, q)

testcase :: Int -> IO ()
testcase kmax = do
    input <- getLine
    let [k, n] = map read (words input) :: [Int]
    let (p, q) = dfs n :: (Int, Int)
    let output = show k ++ " " ++ show p ++ "/" ++ show q :: String
    putStrLn output
    if k < kmax then testcase kmax else return ()

main :: IO ()
main = do
    input <- getLine
    let kmax = read input :: Int
    testcase kmax