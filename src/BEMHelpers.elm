module BEMHelpers exposing (b__, be_, b_m, bem)

import String exposing (toLower, join)
import List exposing (append, singleton)


{-| format an item name for BEM
-}
format : a -> String
format name =
    name
        |> toString
        |> String.map
            (\c ->
                if c == '_' then
                    '-'
                else
                    c
            )
        |> toLower


{-| generates a class name of a block as a string
-}
b__ : a -> String
b__ block =
    format block


{-| generates a class name of a block-element as a string
-}
be_ : a -> b -> String
be_ block element =
    [ format block, format element ]
        |> join "__"


{-| generates a class name of a block-modifier as a string
-}
b_m : a -> b -> String
b_m block modifier =
    [ format block, format modifier ]
        |> join "--"


{-| generates a class name of a block-element-modifier as a string
-}
bem : a -> b -> c -> String
bem block element modifier =
    format modifier
        |> singleton
        |> (append <| singleton <| be_ block element)
        |> join "--"
