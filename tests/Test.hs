import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 76 82 27 12 8
  expect (score signalcase_1 == 58)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 72 79 19 15 10
  expect (score signalcase_2 == 62)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 99 82 8 19 6
  expect (score signalcase_3 == 127)
  expect (classify signalcase_3 == "review")
