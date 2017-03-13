
import Html exposing (text)


-- Exercise1 calculate third product of a list
-- points : List (number,number1)
-- points = [(1,2),(3,4),(5,6),(7,8)]
--
-- productCal : List (a,b) -> number
-- productCal calList =
--   if List.isEmpty calList then
--     0
--   else if List.length calList < 3 then
--     1
--   else
--   let
--     tmpList = List.drop 2 calList
--     (x,y) = List.head tmpList
--   in
--     x * y

--ways to create Lists. denne del er udelukkende for min egen skyld, og ikke en del af opgave besvarelsen!
a : List (number,number1)
a = List.repeat 3 (0,0) -- == [(0,0), (0,0), (0,0)]

b : List Int
b = List.range 3 6 -- == [3,4,5,6]

c : List Int
c = 1 :: [2,3] -- == [1,2,3]

d : List Int
d = 1 :: [] -- == [1]

e : List Int
e = List.append [1,1,2] [3,5,8] -- == [1,1,2,3,5,8]

f : List Char
f = ['a','b'] ++ ['c'] -- == ['a','b','c']

-- Exercise 2 factorial
factorialCal : List(number) -> number
factorialCal facList =
    if List.length facList == 0 then
      0
    else
      List.product facList

factorialList : List(number)
factorialList = [1,2,3,4,5]

facCalRes : number
facCalRes = factorialCal factorialList


-- Exercise 3 Iterations
crazyMath : Int -> Int -> String -> Int
crazyMath n lastRes lastOp =
  if n > 199 then -- basecase: if n is above 199 we have reached the end of the iterations and should multiply the result of the iterations by 4!
    4 * lastRes
  else if lastOp == "-" then
    crazyMath (n+2) (lastRes + (2//n)) "+"
  else -- assuming at this point lastOp is +
    crazyMath (n+2) (lastRes - (2//n)) "-"

crazyMathRes : Int
crazyMathRes = crazyMath 1 0 "+" -- starts with lastOp of + as the first actual operation should be - !!!

-- Exercise 4 ?? cannot find any exercise 4 in the slides...

-- main =
-- text ("Exercise 1 called with: " ++ (toString points))
-- text ("Exercise 2 called with: " ++ toString factorialList)
-- text ("Exercise 2 result: " ++ toString facCalRes)
-- text ("Exercise 3 called with: n=1, lastRes=0, lastOp=+")
-- text ("Exercise 3 result: " ++ toString crazyMathRes)
