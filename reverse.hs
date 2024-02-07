import System.Environment(getArgs)

main :: IO ()
main = do
    args :: [String] <- getArgs
    print (reverse args)