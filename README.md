# forth-multiple-dispatch

Multiple dispatch for gforth.

Example:

    multi factorial
    :: factorial << dup 0= >> drop 1 ;;
    :: factorial <<default>> dup 1- factorial * ;;

    5 factorial . cr    \ 120
