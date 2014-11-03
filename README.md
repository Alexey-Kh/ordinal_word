# ordinal_word

Converts a number in range 1-99 (e.g. 1) to ordinal word (e.g. first) in Ruby.
If not Integer in range [1..99] is passed as an argument, raises OrdinalWordError with appropriate message, otherwise returns string.

## Installation

$ gem install ordinal_word

## Usage

```ruby
require 'ordinal_word'
```

## Examples

```ruby
OrdinalWord.wordinalize(1)      # 'first'
OrdinalWord.wordinalize(13)     # 'thirteenth'
OrdinalWord.wordinalize(99)     # 'ninety-ninth'
OrdinalWord.wordinalize('str')  # OrdinalWord::OrdinalWordError: Argument is not an Integer.
OrdinalWord.wordinalize(0)      # OrdinalWord::OrdinalWordError: Number is less than 1.
```

https://badge.fury.io/hooks/github