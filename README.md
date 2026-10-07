# calc

Small Ruby practice exercises (Mar–Apr 2024): one command-line script per exercise.

| Task | Script | What it does |
| --- | --- | --- |
| `calc` | `lib/calc.rb` | Adds, subtracts, multiplies or divides two numbers |
| `bmi` | `lib/01_bmi.rb` | Body mass index from height (cm) and weight (kg) |
| `email_generator` | `lib/02_email_generator.rb` | Builds an email from name initials, last name and company |
| `usa_grade_converter` | `lib/03_usa_grade_converter.rb` | Converts a 0–10 grade to a US letter grade |
| `fibonacci` | `lib/04_fibonacci.rb` | Prints the Fibonacci series up to a limit |
| `palindrome_checker` | `lib/06_palindrome_checker.rb` | Checks whether a word is a palindrome |
| `letter_frequency` | `lib/07_letter_frequency.rb` | Counts how many times each letter appears |
| `file_search` | `lib/08_file_search.rb` | Finds a text in the `.txt` files of the current folder (`london.txt` is a sample) |

## Run

Tested in Oct 2026 with Ruby 3.4.

```
bundle install
bundle exec rake                # list the tasks
bundle exec rake <task>         # run one, e.g. bundle exec rake calc
```

## Lint

```
bundle exec rubocop
```

RuboCop is configured in `.rubocop.yml`: double-quoted strings, `Gemfile` and `Rakefile` excluded, and no class documentation required. Two offenses remain: `Metrics/MethodLength` in `letter_frequency` and `Style/FileOpen` in `file_search`.

## Known limitations

- No input validation in `calc` and `bmi`: non-numeric input counts as `0`, and dividing by zero (or a height of `0`) prints `Infinity`.
- `bmi` lists the categories but does not say which one the result falls in.
- `palindrome_checker` compares the text as is, so accents and spaces count ("Neuquén" and "A man a plan a canal Panama" are not palindromes).
- `letter_frequency` only counts `a`–`z`, so `ñ` and accented letters are skipped, and uppercase and lowercase letters are counted separately.
- `file_search` keys results by line number, so when two files match on the same line only one is reported. It searches the folder it is run from; `rake file_search` runs it from the project root.

## Status

Archived.
