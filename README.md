# The Implementation of Functional Programming Languages

<p align="center">
<img src="https://github.com/rljacobson/TIOFPL/raw/master/cover.svg" width="25%">
</p>

*The Implementation of Functional Programming Languages* by Simon Peyton-Jones  is a classic work in the area of functional programming language implementation. Sadly, it is also out of print, and hardcopies of the book are hard to find and are generally very expensive. The author, who is completely unaffiliated with this repository, [provides a scanned version of the printed book on his website](https://www.microsoft.com/en-us/research/publication/the-implementation-of-functional-programming-languages/). (Thank you, Simon!)

The scanned version is certainly nice to have but leaves a lot to be desired in terms of comfort of reading and flexibility. You can't copy and paste, for example. I have typeset about 50% of the book for my own enjoyment. I have experimented with using LLMs to typeset the text, and they reduce the effort significantly, but it's no silver bullet. See [`tools/Prompt Engineering.md`](tools/Prompt Engineering.md)

It is unlikely that I will typeset the entire book. I have already done the hard part of obsessively reproducing the typography and layout. It would only take a dozen or so people typesetting a chapter each to complete the whole thing, so pull requests are certainly welcome.

Thank you again to Simon and to the many other scholars who have provided me countless hours of pleasure being lost in your books.

Sincerely,

Robert Jacobson

[CONTRIBUTING](CONTRIBUTING.md)

# Progress

- [X] 1 Introduction
- [X] Part I Compiling High-Level Functional Languages
	- [X] 2 The Lambda Calculus
	- [X] 3 Translating A High-Level Functional Language
	- [X] Into The Lambda Calculus
	- [X] 4 Structured Types And The Semantics Of Pattern-Matching
	- [X] 5 Efficient Compilation Of Pattern-Matching
	- [X] 6 Transforming The Enriched Lambda Calculus
	- [X] 7 List Comprehensions
	- [X] 8 Polymorphic Type-Checking
	- [X] 9 A Type-Checker
- [ ] Part II Graph Reduction
	- [x] 10 Program Representation
	- [x] 11 Selecting The Next Redex
	- [ ] 12 Graph Reduction Of Lambda Expressions
	- [ ] 13 Supercombinators And Lambda-Lifting
	- [ ] 14 Recursive Supercombinators
	- [ ] 15 Fully-Lazy Lambda-Lifting
	- [ ] 16 Sk Combinators
	- [ ] 17 Storage Management And Garbage Collection
- [ ] Part III Advanced Graph Reduction
	- [ ] 18 The G-Machine
	- [ ] 19 G-Code - Definition And Implementation
	- [ ] 20 Optimizations To The G-Machine
	- [ ] 21 Optimizing Generalized Tail Calls
	- [ ] 22 Strictness Analysis
	- [ ] 23 The Pragmatics Of Graph Reduction
	- [ ] 24 Parallel Graph Reduction
- [ ] Appendix An Introduction To Miranda™
