# Contributing

Want to help? It's easy enough. Just use the first couple of chapters as a guide. 

## Custom Macros

Use the existing macros rather than "manually" typesetting code and other recurring text. The following utilities are provided:

* Inline (`\ml{...}`) and displayed code (`\begin{mlcoded}
  ... \end{mlcoded}`) environments
* Parse tree diagrams:

```latex
\begin{center}
	\pstree[nodesep=4pt,levelsep=5ex]{ \TR{\ml{$*$}} }{  
		\pstree{\TR{\ml{+}}}{ \TR{\ml{4}} \TR{\ml{1}} }
		\pstree{\TR{\ml{--}}}{ \TR{\ml{4}} \TR{\ml{1}} }
	}
\end{center}
```

* Numbered lists:

```latex
\begin{numbered}
\item ...
⋮
\end{numbered}
```

* Macros for lambda expressions that apply the correct space: `\tlb{x}+ x 1` for an entire lambda expression and `\tl` for just a raw lambda. 

## Figures and Graphics

Try to reproduce the figures as closely as possible and in LaTeX with pstricks. See fig. 1.1 for an imperfect example.

## Possible Improvements

The most pressing need, by several orders of magnitude, is that of just typesetting the text. 

But if you are a LaTeX guru, here are some ideas:

* Use BibTeX for the bibliography sections. This has the added benefit of a nice .bib file of references. (Hard)
* Modify the TOC to look like the book. (Hard)
* Add a facility for the "automatic" production of the index. (Medium)
* Reproduce a challenging figure. (Easy-Medium)