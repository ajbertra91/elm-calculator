module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String
--import List
--import String.Extra exposing (pluralize)


--model =
--    { showFace = False }

--type Msg =
--    ShowFace

--update msg model_ =
--    case msg of
--        ShowFace -> { model_ | showFace = True }

--view model_ =
--    div []
--        [ h1 [] [text "Face generator"]
--        , button [onClick ShowFace] [text "Face me"]
--        , if model_.showFace then
--            text "(づ｡◕‿‿◕｡)づ"
--          else
--            text ""
--        ]

--main =
--    beginnerProgram
--        { model = model
--        , update = update
--        , view = view
--        }

type alias Model =
    { total : String
    , input1 : String
    , input2 : String
    , opperand : String
    }

model : Model
model =
    { total = "0"
    , input1 = ""
    , input2 = ""
    , opperand = ""
    }

type Msg =
    ShowTotal String
    | StoreInput String
    | Opperand String

update : Msg -> Model -> Model
update msg model_ =
    case msg of
        ShowTotal e ->
            if (model_.opperand /= "") && (model_.input2 /= "") then
                { model_ | total = "{{model_.input1 model_.opperand model_input2}}" }
            else
                { model_ | total = "0" }


        StoreInput newInput ->
            if model_.opperand == "" then
                { model_ | input1 = model_.input1 ++ newInput }
            else
                { model_ | input2 = model_.input2 ++ newInput }

        Opperand newOperator ->
            { model_ | opperand = newOperator }

css : String -> Html Msg
css path =
    node "link" [ rel "stylesheet", href path ] []

calculatorStyles =
    style
        [ ("background-color", "#111")
        , ("max-width", "400px")
        ]

displayStyles =
    style
        [ ("line-height", "80px")
        , ("color",       "#fff")
        , ("text-align",  "right")
        , ("padding",     "0 20px")
        , ("font-size",   "32px")
        , ("font-family", "Helvetica Neue, Arial, Sans-serif")
        , ("font-weight", "100")
        ]

buttonStyles =
    style
        [ ("width",            "25%")
        , ("line-height",      "40px")
        , ("background-color", "#333")
        , ("border",           "1px solid #999")
        , ("color",            "#fff")
        , ("font-size",        "26px")
        , ("font-family",      "Helvetica Neue, Arial, Sans-serif")
        , ("font-weight",      "100")
        ]

view : Model -> Html Msg
view model_ =
    div [ calculatorStyles ]
        [ div [ displayStyles ] [text <| model_.total]
        , div []
            [ button [ value "1", buttonStyles ] [text "1"]
            , button [ value "2", buttonStyles ] [text "2"]
            , button [ value "3", buttonStyles ] [text "3"]
            , button [ value "+", buttonStyles ] [text "+"]
            ]
        , div []
            [ button [ value "4", buttonStyles ] [text "4"]
            , button [ value "5", buttonStyles ] [text "5"]
            , button [ value "6", buttonStyles ] [text "6"]
            , button [ value "-", buttonStyles ] [text "-"]
            ]
        , div []
            [ button [ value "7", buttonStyles ] [text "7"]
            , button [ value "8", buttonStyles ] [text "8"]
            , button [ value "9", buttonStyles ] [text "9"]
            , button [ value "/", buttonStyles ] [text "/"]
            ]
        , div []
            [ button [ value ".", buttonStyles ] [text "."]
            , button [ value "0", buttonStyles ] [text "0"]
            , button [ value "=", buttonStyles ] [text "="]
            , button [ value "*", buttonStyles ] [text "*"]
            ]
        ]

main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }