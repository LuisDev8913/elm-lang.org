module Grid exposing (view)

import Svg exposing (..)
import Svg.Attributes exposing (..)


view : Svg msg
view =
    svg [ height "100%", width "100%", Svg.Attributes.style "position: absolute; left: 0; height: 2000px; opacity: 0.5;" ]
        [ defs []
            [ node "pattern" [ height "10", id "smallGrid", patternUnits "userSpaceOnUse", width "10" ]
                [ Svg.path [ d "M 10 0 L 0 0 0 10", fill "none", stroke "gray", strokeWidth "0.5" ]
                    []
                , text "      "
                ]
            , node "pattern" [ height "100", id "grid", patternUnits "userSpaceOnUse", width "100" ]
                [ node "rect" [ fill "url(#smallGrid)", height "100", width "100" ]
                    []
                , text "        "
                , Svg.path [ d "M 100 0 L 0 0 0 100", fill "none", stroke "gray", strokeWidth "1" ]
                    []
                , text "      "
                ]
            ]
        , node "rect" [ fill "url(#grid)", height "100%", width "100%" ]
            []
        , text "  "
        ]