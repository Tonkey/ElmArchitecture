
import Html exposing (Html, Attribute, div, input, text, button)
import Html.Attributes exposing (..)
import Html.Events exposing (on, onClick, onInput)


main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- model

type alias Model =
  { content : String,
    updateContent : String
  }

model : Model
model =
  { content = "",
    updateContent = "" }



-- update

type Msg
  = Change String | UpdateContent

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }

    UpdateContent ->
      { model | updateContent = model.content }



-- view

view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Text to append", onInput Change ] []
    , button [ onClick UpdateContent ] [ text "update" ]
    , div [] [ text ("Hello " ++ model.updateContent) ]
    ]
