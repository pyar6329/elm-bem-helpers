module BEMHelpers.Class exposing (b__, be_, b_m, bem)

{-| Some functions for generationg BEM class attributes.
@docs b__
@docs be_
@docs b_m
@docs bem
-}

import Html.Attributes as Attr
import Html exposing (Attribute)
import BEMHelpers as BEM


{-| Returns a class attribute from block, element, and modifier.
-}
bem : a -> b -> c -> Attribute msg
bem block element modifier =
    BEM.bem block element modifier
        |> Attr.class


{-| Returns a class attribute from a block
-}
b__ : a -> Attribute msg
b__ block =
    BEM.b__ block
        |> Attr.class


{-| Returns a class attribute from block and element.
-}
be_ : a -> b -> Attribute msg
be_ block element =
    BEM.be_ block element
        |> Attr.class


{-| Returns a class attribute from block and modifier.
-}
b_m : a -> b -> Attribute msg
b_m block modifier =
    BEM.b_m block modifier
        |> Attr.class
