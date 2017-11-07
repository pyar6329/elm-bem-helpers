# elm-bem-helpers

Some helpers for using BEM class names that I often use.

## install

I believe using [rtfeldman/elm-css](https://github.com/rtfeldman/elm-css) or [mdgriffith/style-elements](https://github.com/mdgriffith/style-elements) is better.  
If you'd like this module, use [gdotdesign/elm-github-install](https://github.com/gdotdesign/elm-github-install) to install.  And add below into the "elm-package.json". 

```json
"dependencies": {
    "vateira/elm-bem-helpers": "1.0.0 <= v < 2.0.0"
},
"dependency-sources": {
    "vateira/elm-bem-helpers": "https://github.com/vateira/elm-bem-helpers.git"
}
```

## example

```elm
import Html exposing (div, text, br)
import Html.Attributes exposing (class)
import BEMHelpers as BEM
import BEMHelpers.Class as Class


type Block
    = Menu


type Element
    = List_Item
    | Image


type Modifier
    = Active


main =
    div [ Class.b__ Menu ]
        [ div [ Class.be_ Menu Image ]
            [ text (BEM.be_ Menu Image)
            ]
        , div [ Class.b_m Menu Active ]
            [ text (BEM.b_m Menu Active)
            ]
        , div [ Class.bem Menu List_Item Active ]
            [ text (BEM.bem Menu List_Item Active)
            ]
        ]
```
