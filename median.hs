import System.Environment(getArgs)
import Data.List (sort)

median :: [Int] -> Maybe Double
median [] = Nothing
median xs
  | even len  = Just $ (fromIntegral (sorted !! middle) + fromIntegral (sorted !! (middle - 1))) / 2.0
  | otherwise = Just $ fromIntegral (sorted !! middle)
  where
    sorted = sort xs
    len = length xs
    middle = div len 2

main :: IO ()
main = do
    args :: [String] <- getArgs
    print (median (map length args))
