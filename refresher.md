The only effect that a pure function can have is according to Simon Peyton Jones to warm up the room. Haskell solves this dead end by embedded impure, imperative subsystems in the pure functional language.

examples of monads in future C++: std::optional in C++17, the ranges library from Eric Nieber in C++20, and the extended futures in C++20.

http://bartoszmilewski.com/2014/02/26/c17-i-see-a-monad-in-your-future/


*    I/O  monad: Calculations that deal with input and output.
*    Maybe monad: Calculations that maybe return a result.
*    Error monad: Calculations that can fail.
*    List monad: Calculations that can have an arbitrary number of results.
*    State monad: Calculations that build a state.
*    Reader monad: Calculations that read from the environment.

