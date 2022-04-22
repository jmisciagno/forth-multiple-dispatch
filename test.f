multi silly
:: silly << dup 0= >> ." hi" cr ;;
:: silly <<default>> ." bye" cr ;;

0 silly
-1 silly 

multi many
:: many << dup 0 = >> ." A" cr ;;
:: many << dup 1 = >> ." B" cr ;;
:: many << dup 2 = >> ." C" cr ;;

0 many
1 many
2 many

multi factorial
:: factorial << dup 0= >> drop 1 ;;
:: factorial <<default>> dup 1- factorial * ;;

5 factorial . cr
