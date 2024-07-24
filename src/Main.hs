module Main (main) where

import Control.Monad (forM_)
import qualified Y2023.Day1.SolutionPart1 as D1P1

solutions :: [[IO Int]]
solutions = [ D1P1.getSolution ] : []


main :: IO ()
main = do
  putStrLn "---------------------------"
  putStrLn "    Advent of Code 2023"
  putStrLn "---------------------------"

  forM_ (zip [1..] solutions) $ outputSolutionParts


outputSolutionParts :: (Int, [IO Int]) -> IO ()
outputSolutionParts (dayNum, parts) = do
  forM_ (zip ([1..] :: [Int]) parts) $ \(partNum, solution) -> do
    sol <- solution
    putStrLn ("Day " ++ show dayNum ++ ", part " ++ show partNum ++ " solution is: " ++ show sol)
