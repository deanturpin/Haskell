Install the compiler
```
sudo apt-get install ghc
```

Compile and run
```
$ runghc hello.hs 
Hello, World!
```

## Examples
```haskell
Prelude> succ 5
6
Prelude> truncate 6.59
6
Prelude> round 6.59
7
Prelude> sqrt 2
1.4142135623730951
Prelude> not (5 < 3)
True
Prelude> gcd 21 14
7
```

## Resources
https://wiki.haskell.org/Learn_Haskell_in_10_minutes

## All builtin functions
```
!!                      Prelude.foldl           cos
$                       Prelude.foldl1          cosh
$!                      Prelude.foldr           curry
&&                      Prelude.foldr1          cycle
*                       Prelude.fromEnum        decodeFloat
**                      Prelude.fromInteger     div
+                       Prelude.fromIntegral    divMod
++                      Prelude.fromRational    drop
-                       Prelude.fst             dropWhile
.                       Prelude.gcd             either
/                       Prelude.getChar         elem
/=                      Prelude.getContents     encodeFloat
<                       Prelude.getLine         enumFrom
<=                      Prelude.head            enumFromThen
=<<                     Prelude.id              enumFromThenTo
==                      Prelude.init            enumFromTo
>                       Prelude.interact        error
>=                      Prelude.ioError         even
>>                      Prelude.isDenormalized  exp
>>=                     Prelude.isIEEE          exponent
Bool                    Prelude.isInfinite      fail
Bounded                 Prelude.isNaN           filter
Char                    Prelude.isNegativeZero  flip
Double                  Prelude.iterate         floatDigits
EQ                      Prelude.last            floatRadix
Either                  Prelude.lcm             floatRange
Enum                    Prelude.length          floor
Eq                      Prelude.lex             fmap
False                   Prelude.lines           foldl
FilePath                Prelude.log             foldl1
Float                   Prelude.logBase         foldr
Floating                Prelude.lookup          foldr1
Fractional              Prelude.map             fromEnum
Functor                 Prelude.mapM            fromInteger
GT                      Prelude.mapM_           fromIntegral
IO                      Prelude.max             fromRational
IOError                 Prelude.maxBound        fst
Int                     Prelude.maximum         gcd
Integer                 Prelude.maybe           getChar
Integral                Prelude.min             getContents
Just                    Prelude.minBound        getLine
LT                      Prelude.minimum         head
Left                    Prelude.mod             id
Maybe                   Prelude.negate          init
Monad                   Prelude.not             interact
Nothing                 Prelude.notElem         ioError
Num                     Prelude.null            isDenormalized
Ord                     Prelude.odd             isIEEE
Ordering                Prelude.or              isInfinite
Prelude.!!              Prelude.otherwise       isNaN
Prelude.$               Prelude.pi              isNegativeZero
Prelude.$!              Prelude.pred            it
Prelude.&&              Prelude.print           iterate
Prelude.*               Prelude.product         last
Prelude.**              Prelude.properFraction  lcm
Prelude.+               Prelude.putChar         length
Prelude.++              Prelude.putStr          lex
Prelude.-               Prelude.putStrLn        lines
Prelude..               Prelude.quot            log
Prelude./               Prelude.quotRem         logBase
Prelude./=              Prelude.read            lookup
Prelude.<               Prelude.readFile        map
Prelude.<=              Prelude.readIO          mapM
Prelude.=<<             Prelude.readList        mapM_
Prelude.==              Prelude.readLn          max
Prelude.>               Prelude.readParen       maxBound
Prelude.>=              Prelude.reads           maximum
Prelude.>>              Prelude.readsPrec       maybe
Prelude.>>=             Prelude.realToFrac      min
Prelude.Bool            Prelude.recip           minBound
Prelude.Bounded         Prelude.rem             minimum
Prelude.Char            Prelude.repeat          mod
Prelude.Double          Prelude.replicate       negate
Prelude.EQ              Prelude.return          not
Prelude.Either          Prelude.reverse         notElem
Prelude.Enum            Prelude.round           null
Prelude.Eq              Prelude.scaleFloat      odd
Prelude.False           Prelude.scanl           or
Prelude.FilePath        Prelude.scanl1          otherwise
Prelude.Float           Prelude.scanr           pi
Prelude.Floating        Prelude.scanr1          pred
Prelude.Fractional      Prelude.seq             print
Prelude.Functor         Prelude.sequence        product
Prelude.GT              Prelude.sequence_       properFraction
Prelude.IO              Prelude.show            putChar
Prelude.IOError         Prelude.showChar        putStr
Prelude.Int             Prelude.showList        putStrLn
Prelude.Integer         Prelude.showParen       quot
Prelude.Integral        Prelude.showString      quotRem
Prelude.Just            Prelude.shows           read
Prelude.LT              Prelude.showsPrec       readFile
Prelude.Left            Prelude.significand     readIO
Prelude.Maybe           Prelude.signum          readList
Prelude.Monad           Prelude.sin             readLn
Prelude.Nothing         Prelude.sinh            readParen
Prelude.Num             Prelude.snd             reads
Prelude.Ord             Prelude.span            readsPrec
Prelude.Ordering        Prelude.splitAt         realToFrac
Prelude.Rational        Prelude.sqrt            recip
Prelude.Read            Prelude.subtract        rem
Prelude.ReadS           Prelude.succ            repeat
Prelude.Real            Prelude.sum             replicate
Prelude.RealFloat       Prelude.tail            result
Prelude.RealFrac        Prelude.take            return
Prelude.Right           Prelude.takeWhile       reverse
Prelude.Show            Prelude.tan             round
Prelude.ShowS           Prelude.tanh            scaleFloat
Prelude.String          Prelude.toEnum          scanl
Prelude.True            Prelude.toInteger       scanl1
Prelude.^               Prelude.toRational      scanr
Prelude.^^              Prelude.truncate        scanr1
Prelude.abs             Prelude.uncurry         seq
Prelude.acos            Prelude.undefined       sequence
Prelude.acosh           Prelude.unlines         sequence_
Prelude.all             Prelude.until           show
Prelude.and             Prelude.unwords         showChar
Prelude.any             Prelude.unzip           showList
Prelude.appendFile      Prelude.unzip3          showParen
Prelude.asTypeOf        Prelude.userError       showString
Prelude.asin            Prelude.words           shows
Prelude.asinh           Prelude.writeFile       showsPrec
Prelude.atan            Prelude.zip             significand
Prelude.atan2           Prelude.zip3            signum
Prelude.atanh           Prelude.zipWith         sin
Prelude.break           Prelude.zipWith3        sinh
Prelude.ceiling         Prelude.||              snd
Prelude.compare         Rational                span
Prelude.concat          Read                    splitAt
Prelude.concatMap       ReadS                   sqrt
Prelude.const           Real                    subtract
Prelude.cos             RealFloat               succ
Prelude.cosh            RealFrac                sum
Prelude.curry           Right                   tail
Prelude.cycle           Show                    take
Prelude.decodeFloat     ShowS                   takeWhile
Prelude.div             String                  tan
Prelude.divMod          True                    tanh
Prelude.drop            ^                       toEnum
Prelude.dropWhile       ^^                      toInteger
Prelude.either          abs                     toRational
Prelude.elem            acos                    truncate
Prelude.encodeFloat     acosh                   uncurry
Prelude.enumFrom        all                     undefined
Prelude.enumFromThen    and                     unique
Prelude.enumFromThenTo  any                     unlines
Prelude.enumFromTo      appendFile              until
Prelude.error           asTypeOf                unwords
Prelude.even            asin                    unzip
Prelude.exp             asinh                   unzip3
Prelude.exponent        atan                    userError
Prelude.fail            atan2                   words
Prelude.filter          atanh                   writeFile
Prelude.flip            break                   zip
Prelude.floatDigits     ceiling                 zip3
Prelude.floatRadix      compare                 zipWith
Prelude.floatRange      concat                  zipWith3
Prelude.floor           concatMap               ||
Prelude.fmap            const
```
