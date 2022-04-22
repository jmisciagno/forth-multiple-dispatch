variable null
: cons here >r 2, r> ;
: car @ ;
: cdr cell+ @ ;
: push ( n a )
    dup @ null =
    if >r null swap cons r> !
    else @ cell+ recurse
    then
;

: dispatch ( a )
    dup null =
    if drop -1 abort" no instance."
    else dup >r car execute r> swap
	if   drop
	else cdr recurse
	then
    then
;

: multi ( "name" )
    here >r null ,
    : r> ]] literal @ dispatch ; [[
;

: multi>list >body cell+ @ ;
: :: ' multi>list ;
: << :noname ; 
: >> ]] dup 0= if exit then >r [[ ; immediate
: <<default>> :noname ]] -1 >r [[ ; 
: ;; ]] r> ; [[ swap push ; immediate
