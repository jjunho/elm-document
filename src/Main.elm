module Main exposing (main)

import Browser
import Html exposing (div)


type alias Model =
    {}


type Msg
    = NoOp


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Browser.Document Msg
view model =
    { title = ""
    , body = [ div [] [] ]
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
