# String Calculator TDD Project

A Test-Driven Development implementation of a string calculator that handles various input formats and validates numbers according to specific rules.

## Overview

This project implements a string calculator that processes comma-separated numbers with support for:
- Custom delimiters
- New line characters as separators
- Negative number validation
- Multiple number inputs

## Requirements

- Ruby 3.3.0 or higher

## Installation

1. Clone the repository:
```bash
git clone https://github.com/manu29d/incubyte-tdd-kata.git
cd incubyte-tdd-kata
```

## Usage

The calculator provides a simple `add` method that accepts a string input and returns the sum of numbers:

```ruby
calculator = StringCalculator.new
result = calculator.add("1,2,3")  # Returns 6
```

### Input Format

The calculator accepts various input formats:

1. Empty string:
```ruby
calculator.add("")  # Returns 0
```

2. Single number:
```ruby
calculator.add("1")  # Returns 1
```

3. Multiple numbers:
```ruby
calculator.add("1,5")  # Returns 6
```

4. New line as separator:
```ruby
calculator.add("1\n2,3")  # Returns 6
```

5. Custom delimiter:
```ruby
calculator.add("//;\n1;2")  # Returns 3
```

### Error Handling

The calculator throws an exception for negative numbers:

```ruby
calculator.add("-1,2")  # Raises "negative numbers not allowed -1"
calculator.add("-1,-2")  # Raises "negative numbers not allowed -1,-2"
```

## Testing

Run the test suite using RSpec:

```bash
ruby string_calculator_spec.rb
```

## Development Process

This project follows Test-Driven Development (TDD) principles:

1. Write a failing test
2. Write the minimum code to make the test pass
3. Refactor while keeping tests green
4. Repeat

## Project Structure

```
incubyte-tdd-kata
└── string_calculator.rb
└── string_calculator_spec.rb
└── README.md
```
