# Contributing

Want to help? It's easy enough. ~Just use the first couple of chapters as a guide.~ Actually, the last few chapters might be better, as I got better at typesetting in a standard way, especially formatting code listings.

## Possible Improvements

The most pressing need, by several orders of magnitude, is that of just typesetting the text.

But if you are a LaTeX guru, here are some ideas:

* Use BibTeX for the bibliography sections. This has the added benefit of a nice .bib file of references. (Hard)
* Modify the TOC to look like the book. (Hard)
* Add a facility for the "automatic" production of the index. (Medium)
* Reproduce a challenging figure. (Easy-Medium)
* Replace an SVG figure with a tikz equivalent (as in Chapter 11, Easy)

## Custom Commands and Environments

In the follow table, the `…` symbol is a placeholder for arbitrary text, math, or code, depending on the context. Also, we use placeholder names beginning with `the` for command parameters. For example, in `\simpletitledbox{thetitle}{…}`, the variable `thetitle` stands in for the title of the box, which can be any text.

### Formatting Code


| Command                                | Description                                                  | Example                              | Issues                                                       |
| -------------------------------------- | ------------------------------------------------------------ | ------------------------------------ | ------------------------------------------------------------ |
| `\ml{…}`                               | Inline pseudocode or Miranda code                            | The application `\ml{f x}` means.... | Do not use in an `mlcoded` environment.                      |
| `\begin{mlcoded} …\end{mlcoded}`       | Displayed pseudocode or Miranda code                         |                                      |                                                              |
| `\begin{mlalign} …\end{mlalign}`       | Two column tabular environment specifically for code with `rl` alignment |                                      | Wraps content in an `mlcoded` environment.                   |
| `\begin{letalign} …\end{letalign}`     | Same as `mlalign` but `ll` aligned                           |                                      | Use for simple `let` definitions. Wraps content in an `mlcoded` environment. |
| `\begin{mlnumbered} …\end{mlnumbered}` | Numbered code equivalent to math equation                    |                                      | Wraps content in an `mlcoded` environment.                   |


### Operators and Symbols


| Command                                               | Description                                   | Example                           | Issues                                                       |
| ----------------------------------------------------- | --------------------------------------------- | --------------------------------- | ------------------------------------------------------------ |
| `\tlb{…}`                                             | A lambda abstraction                          | `\tlb{x}f x`                      | Use neither space nor dot after `\tlb{…}`                    |
| `\tl{}`                                               | A plain lambda, equivalent to `\lambda`       | A \tl{}-abstraction is...         |                                                              |
| `\rightarrow`, `\to`, `\leftarrow`, `\leftrightarrow` | Arrows                                        | `f x \to x`                       |                                                              |
| `\fatbar`                                             | The fat bar operator                          | `x \fatbar{} y`                   | Put `{}` after the operator to preserve whitespace after it. |
| `\typedecl`                                           | The `::=` operator for declaring a type       | `f \typedecl{} \ta{} \to \tb{}`   |                                                              |
| `\hastype`                                            | The `::` operator for type indication         | `x \hastype{} Integer`            |                                                              |
| `\metafn{thefunctionname}`                            | Typesets `thefunctionname` as a meta function | `\metafn{Translate}`              | Use for function names only.                                 |
| `\metafnbb{thefunctionname}{…}`                       | Typesets `thefunctionname` applied to content | `\metafn{Translate}{f x = * x x}` | Supplies brackets `[[…]]` automatically.                     |


### Figures and Floats


| Command                                | Description                                          | Example                                                      | Issues |
| -------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------------ | ------ |
| `\boxedfigure{…}{thecaption}`          | A floating figure with caption `thecaption`          | `\boxedfigure{\includegraphics{Fig1}}{The traditional compilation pipeline.}` |        |
| `\plainbox{…}`                         | A centered box containing content                    |                                                              |        |
| `\simpletitledbox{thetitle}{…}`        | Box with title `thetitle`                            | `\simpletitledbox{Summary}{The following rules summarize …}` |        |
| `\titledbox{thetitle}{thesubtitle}{…}` | Box with title `thetitle` and subtitle `thesubtitle` | `\titledbox{Disclaimer}{Use of Miranda trademark}{Miranda is a trademark of …}` |        |
| `\theorembox{thetheoremname}{…}`       | A theorem statement box                              | `\theorembox{The Pumping Lemma}{If the string …}`            |        |
| `\definitionbox{thedefinitionname}{…}` | A definition box                                     | `\theorembox{Open Set}{A set is open if and only if…}`       |        |


### Structures and Environments

| Command                               | Description                                                | Example | Issues                                 |
| ------------------------------------- | ---------------------------------------------------------- | ------- | -------------------------------------- |
| `\begin{numbered}…\end{numbered}`     | Numbered list environment (use with `\item`)               |         |                                        |
| `\begin{references}…\end{references}` | Reference list environment for chapters (use with `\item`) |         |                                        |
| `\begin{pcorollary}…\end{pcorollary}` | Environment for corollary statements                       |         | Prepends statement with "Corollary.\;" |
| `\begin{pproof}…\end{pproof}`         | Environment for proofs                                     |         | Prepends proof with "Proof.\;"         |
| `\begin{parsetree}…\end{parsetree}`   | Parse tree environment using `forest` package              |         |                                        |


### Whitespace


| Command | Description                                   | Example | Issues |
| ------- | --------------------------------------------- | ------- | ------ |
| `\vs`   | Vertical space, half a line                   |         |        |
| `\pg`   | Starts a new page, equivalent to `\clearpage` |         |        |
