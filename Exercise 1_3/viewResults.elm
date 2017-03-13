
import Html exposing (Html, Attribute, div, text)

main : Program Never Model Msg
main =
   Html.beginnerProgram { model = model, view = view, update = update }


 -- MODEL

type alias Model =
   { content : String }

model : Model
model = { content = "" }

 -- UPDATE

type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }


-- Logic
-- Exercise 1
points : List (number,number1)
points = [(1,2),(3,4),(5,6),(7,8)]

-- productCal doCalc =
--   if List.isEmpty doCalc then
--     0
--   else if List.length doCalc < 3 then
--     1
--   else
--     let
--       --temp = List.drop 2 doCalc -- get the third element as the first
--       x : Int
--       x = List.head doCalc
--     in
--       x

-- Exercise 2
factorialCal : List(number) -> number
factorialCal facList =
    if List.length facList == 0 then
      0
    else
      List.product facList

-- Exercise 3
factorialList : List(number)
factorialList = [1,2,3,4,5]

facCalRes : number
facCalRes = factorialCal factorialList


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

  -- VIEW

view : Model -> Html Msg
view model =
  div []
    [
      div [] [ text ("Exercise 1 called with: " ++ (toString points)) ]
    , div [] [ text ("Exercise 1 is not completed, I kept running in to type missmatching problem when extracting the tuple") ]
    , div [] [ text ("Exercise 2 called with: " ++ toString factorialList) ]
    , div [] [ text ("Exercise 2 result: " ++ toString facCalRes) ]
    , div [] [ text ("Exercise 3 called with: n=1, lastRes=0, lastOp=+") ]
    , div [] [ text ("Exercise 3 result: " ++ toString crazyMathRes) ]
    ]
