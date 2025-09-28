# Typesetting playbook for this project

## Page-level rules

- **Never include page headers/footers** from the scans in the typeset text.
- Map numbered headings per spec: 3.5 → `\section{…}`, 3.5.3 → `\subsection{…}`, 3.5.3.1 → `\subsubsection{…}`. **Do not print the numbers.**
- Preserve emphasis from the source (e.g., _extending_, _is_) with `\textit{…}`.

## Choosing the right container

- Display mathematics (not code):
  - Single or few lines with no alignment: use `\[ … \]`.
  - Multi-line aligned math: use `align*`.

- Code-like lines/snippets (ML syntax, definitions, rules, results):
  - Single or multi-line **without column alignment**: use `mlcoded`.
  - If columns are needed (e.g., guard/condition columns, case splits), nest a `tabular` inside `mlcoded` to align columns.
  - **Do not** use `mlalign` as a `tabular` environment.

- Inline code: wrap with `\ml{…}` (never math mode for code-inline).

## What is (and isn’t) math mode

- `mlalign`, `mlcoded`, and `\ml{…}` are **text-mode** containers. Inside them, **wrap math symbols** with `$…$` as needed (e.g., `$=$`, `$\rightarrow$`, `\ml{t$'$}`, `\ml{t$_1$}`).
- **Do not** assume `mlalign` is math mode. If you need full math-mode blocks, use `\[ … \]`.

## Inside `mlalign`, `mlcoded`, and `\ml{…}`

- Allowed (with `$…$`): math symbols like `\rightarrow`, `=`, `\in`, `\equiv`, subscripts/superscripts (`t_1`, `t^2`), primes (`x$'$`).

- Literal code tokens starting with a dollar sign remain literal.
  - Write `\$in`, `\$scomp`, etc. **Do not** replace them with `$\in$`/`$\scomp$`.

- Underscores are literal characters in code identifiers: escape them as `\_` (e.g., `type_exp`, `tvars_in`).

- No `\text{…}` inside `mlalign`, `mlcoded`, or `\ml{…}` unless unavoidable; prefer plain text or `{\normalfont …}` for words like “if”, “otherwise” in code tables.

- Primes in code: in `\ml{…}`/`mlcoded`/`mlalign`, write `x$'$`, `phi$'$`, `t$'$`.

- Asterisks in code: in `\ml{…}`/`mlcoded`/`mlalign`, write `$\ast$`. **Do not** use a naked asterisk `*`.

- Spacing in math: for math displays, use \; for spacing, e.g. around operators. Do **not** insert naked semicolons to create space.

- Spaces in code tuples/applications: write `\ml{(phi tvn)}` (no escaped inter-word space like `\ `).

- Special type operators: use `\typedecl{}` to typeset `::=` and `hastype{}` to typeset `::`. 

## Environment hygiene

- Always put a **newline after** `\begin{mlalign}` / `\begin{mlcoded}` (and after `\begin{tabular}` when nested) and a **newline before** the corresponding `\end{…}`.
- Do not wrap the contents of `mlcoded`/`mlalign` lines in `\ml{…}` (those environments already represent code/text-mode content).
- When aligning code cases, use a `tabular` with columns that mirror the logical structure (e.g., LHS, separator, RHS/condition). Avoid cramming alignment into `mlalign`.

## Inline conventions & macros

- Use `\ml{…}` for inline code, variable names, code tuples, and **numeric results of code** (wrap the number inside `\ml{}`).

- Use special Greek macros: `\ta{}`, `\tb{}`, `\tl{}`, `\te{}` for alpha, beta, lambda, eta. Correct OCR like `B-` to `\tb{}-` forms where intended (e.g., ``\tb{}-abstraction’’).

- Correct `Ax.` OCR errors to `\tlb{x}`.

- Quotes: single opens with backtick , closes with `'`; double opens with and closes with ''.

- `\tbl{}` must **never** be followed by a space or a period.

- Use `\metafnbb`/`\metafn` for `Eval`:
  - `Eval[[x]]` → `\metafnbb{Eval}{x}`
  - Bare `Eval` (no `[[…]]`) → `\metafn{Eval}`.
  - Repair dropped/misread brackets (`I`/missing) per context.

## Math vs code judgment

- **Mathematical statements** (e.g., sequences of equations, algebraic equalities) go in math (`\[ … \]` or `align*` when truly aligned).
- **Language definitions, typing/evaluation rules, substitutions/unification clauses, and returns like `OK`/`FAILURE`** are **code**, not math → `mlcoded` (with `tabular` if aligning cases).

## OCR fix-ups to apply proactively

- Repair primes (`'`) to `$'$` inside code containers.
- Normalize spacing around operators in math with `\;`.
- Escape all literal underscores in identifiers.
- Replace misread Greek/keywords/macros per this playbook.
- Remove page heads/folia (“Section …”, page numbers).

## Headings and numbering

- Detect headings by their numeric pattern and emit the correct LaTeX sectioning command **without** the number.
- Do **not** invent headings where the page shows none.
- Use the special environment `\begin{numbered}` / `\end{numbered}` instead of  `\begin{enumerate}[(i)]` / `\end{enumerate}`.

## Final QA checklist (run mentally before submitting)

1. Correct container chosen (`\[ … \]` vs `mlalign` vs `mlcoded` + optional `tabular`)?
2. No `\ml{}` inside `mlalign`/`mlcoded`?
3. All math tokens inside `mlalign`/`mlcoded`/`\ml{}` wrapped with `$…$`? (including primes)
4. All literal identifiers use `\_` and preserve literal `\$name` tokens?
5. Semicolon spacing in math uses `\;`?
6. Italics from source preserved (`\textit{…}`)?
7. Greek letters via `\ta{}`, `\tb{}`, `\tl{}`, `\te{}` as needed?
8. Newlines before/after environment begins/ends present?
9. No stray `\text{…}` inside code containers?
10. No page headers/footers accidentally included?

Follow this playbook for every page; when uncertain whether something is math or code, default to **code for language constructs** and **math for mathematical equalities/derivations**, then re-check with the QA list.
