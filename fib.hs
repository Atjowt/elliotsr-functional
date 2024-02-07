import System.Environment(getArgs)

main :: IO ()
main = do
    args :: [String] <- getArgs 
    let n = map read args :: [Integer]
    print (map fib n)

fib :: Integer -> Integer
fib n
    | n <= 2 = 1
    | otherwise = fib (n - 1) + fib (n - 2)