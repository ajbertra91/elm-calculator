module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String
import List

-- ------------------------------------
-- ------------------------------------

--politely : String -> String
--politely phrase =
--    "Excuse me, " ++ phrase

--ask : String -> String -> String
--ask thing place =
--    "is there a " ++ thing ++ " in the " ++ place ++ "?"

--askPolitelyAboutFish : String -> String
--askPolitelyAboutFish = politely << (ask "fish")

-- ------------------------------------
-- ------------------------------------

--type alias Dog =
--    { name : String
--    , age : Int
--    }

--dog =
--    { name = "Spock"
--    , age = 3
--    }

--renderDog : Dog -> String
--renderDog dog =
--    dog.name ++ ", " ++ (toString dog.age)

--main =
--    text <| renderDog dog

-- ------------------------------------
-- ------------------------------------

--type alias Person =
--    { name: String
--    , age : Int
--    }

--people =
--    [ { name = "Legolas", age = 2931 }
--    , { name = "Gimli", age = 139 }
--    ]

--findPerson : String -> List Person -> Maybe Person
--findPerson name peeps = List.foldl
--    (\peep memo ->
--        case memo of
--            Just _ ->
--                memo
--            Nothing ->
--                if peep.name == name then
--                    Just peep
--                else Nothing
--    )
--    Nothing
--    peeps

--names : List Person -> List String
--names peeps =
--    List.map (\peep -> peep.name) people

--main = text <| toString <| findPerson "bilbo"
--    people

-- ---------------------------------------------------------
-- Render HTML in the browser using the Html Module in Elm
-- ---------------------------------------------------------

--type alias Ship =
--    { name : String
--    , model : String
--    , cost : Int
--    }

--ships =
--    [ { name = "X-wing", cost = 149999 }
--    , { name = "Millenium Falcon", cost = 100000 }
--    , { name = "Death Star", cost = 100000000000 }
--    ]

--renderShip ship =
--    li [
--        style
--        [ ("background-color", "#cccccc")
--        , ("border-top", "1px #666666 solid")
--        , ("margin-bottom", "4px")
--        , ("padding", "10px")
--        ]
--    ]
--        [ text ship.name
--        , text ", "
--        , strong []
--            [ text <| toString ship.cost]
--        ]

--renderShips ships =
--    div [
--        style
--            [ ("font-family","Helvetica Neue, Arial, Sans-serif")
--            , ("font-weight", "100")
--            , ("padding", "1em")
--            ]
--        ]
--        [ h1 [] [text "Ships"]
--        , ol [] (List.map renderShip ships)
--    ]

--main =
--    renderShips ships

-- ----------------------------------------------
-- Reuse Functions Through Type Variables in Elm
-- ----------------------------------------------

--numbers =
--    [ 1,2,3,4,5 ]

--fruits =
--    [ { name = "Orange"}, { name = "Banana"} ]

--printThing : thing -> Html msg
--printThing thing =
--    ul [] [ text <| toString thing ]


--main =
--    ul [] (List.map printThing fruits)

-- ---------------------------------------------------
-- Create Apps Using the Elm Application Architecture
-- ---------------------------------------------------

-- Four Parts

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

-- --------------------------------------------------
-- Discover new Packages Using the Elm Package Index
-- package.elm-lang.org
-- --------------------------------------------------

items =
    [ "Green Eggs", "Green Ham"]

main =
    div []
        [ h1 [] [ text <| "Items" ]
        , text <| toString <| items
        ]
























