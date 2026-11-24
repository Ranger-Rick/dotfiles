---
name: quickfix
description: Write file/line locations to a .quickfix file in the current working directory so the user can load them into Neovim's quickfix list. Use whenever a response lists 2 or more specific code locations (file path + line number) — search results, review findings, call sites, places to change, error locations — or when the user runs /quickfix.
---

# quickfix

Whenever your response presents **2 or more** concrete code locations (a file plus a line number), also write them to `.quickfix` in the current working directory, so the user can load them into Neovim with `<leader>cf`.

Always still show the locations in chat as usual — the file is in addition to, not instead of, the chat output.

## When to write

- Write: lists of search hits, review findings, call sites, places to edit, test failures, error locations — any set of 2+ `file:line` references the user might want to visit.
- Don't write: a single location, locations that only appear inside code examples, or hypothetical/example paths.
- If the user runs `/quickfix` explicitly, write the locations from your most recent answer (even if there's only one).

## File rules

- **Path:** `<cwd>/.quickfix` — the directory Claude Code was started in, not a subdirectory you `cd`'d into.
- **Overwrite** the file each time; never append. (Neovim keeps older lists via `:colder` / `:cnewer`.)
- **One location per line**, in Vim's default errorformat:

  ```
  /absolute/path/to/file.ext:LINE:COL: short description
  ```

  - Path must be **absolute**.
  - `COL` is the column if known, otherwise `1`.
  - Description: one line, short (under ~80 chars), saying *why* this location matters. No newlines.
- List entries in the same order they appear in your response.
- Verify the files exist; don't write guessed paths or line numbers.

## Example

```
/Users/me/proj/src/Api/OrderController.cs:42:1: Null check missing before Order.Total access
/Users/me/proj/src/Api/OrderService.cs:118:9: Same pattern — Total read without guard
/Users/me/proj/tests/OrderTests.cs:77:1: Test that should cover the null case
```

Write it with the Write tool (or a heredoc), then mention briefly at the end of your response: `Wrote N locations to .quickfix`.
