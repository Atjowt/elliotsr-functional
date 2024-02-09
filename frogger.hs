-- https://open.kattis.com/problems/1dfroggereasy

frogger :: [Int] -> Int -> Int -> Int -> Int -> [Int] -> (String, Int)
frogger nums n i m h visited
    | k == m            = ("magic", h)
    | i `elem` visited  = ("cycle", h)
    | i < 0             = ("left", h)
    | i >= n            = ("right", h)
    | otherwise         = frogger nums n (i + k) m (h + 1) (visited ++ [i])
    where
        k = nums !! i

main :: IO ()
main = do
    line <- getLine
    let [n, s, m] = map read (words line) :: [Int]
    line <- getLine
    let nums = map read (words line) :: [Int]
    let (fate, h) :: (String, Int) = frogger nums n (s - 1) m 0 []
    putStrLn fate
    print h