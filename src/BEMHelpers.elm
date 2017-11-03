module BEMHelpers exposing (b__, be_, b_m, bem)

{-| Some helper functions generate BEM class as a string
@docs b__
@docs be_
@docs b_m
@docs bem
-}

import String exposing (toLower, join)
import List exposing (append, singleton)


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


{-| generates a class name from a block.
-}
b__ : a -> String
b__ block =
    format block


{-| generates a class name from block and element.
-}
be_ : a -> b -> String
be_ block element =
    [ format block, format element ]
        |> join "__"


{-| generates a class name from block and modifier.
-}
b_m : a -> b -> String
b_m block modifier =
    [ format block, format modifier ]
        |> join "--"


{-| generates a class name from block, element, and modifier.
-}
bem : a -> b -> c -> String
bem block element modifier =
    format modifier
        |> singleton
        |> (append <| singleton <| be_ block element)
        |> join "--"
