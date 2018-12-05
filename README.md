# Anagrams

A ruby implementation of a simple command line app that checks a word for anagrams in a given list of words.

## Approach
I followed a test driven development approach to this challenge following the Red, Green, Refactor cycle to ensure code quality.

This application was written in Ruby with RSpec as the testing framework. Currently coverage is at 100%.

Both the word to be checked and the file are taken to be strings. The file can have multiple words per line or can have a single word per line.

The subject string (word to be checked for anagrams) and the words within the file are not case sensitive. Therefore an input of Listen or lISTen both would give the same results.

## Acceptance Criteria
The following are accepted as input:

- Word to check (known as the subject)
- A file containing the list of words to check against
- The output should be the list of words that are anagrams of the subject

## Technologies
This app was written in Ruby and makes use of Rubocop and SimpleCov to ensure code  quality.

## Usage

To use this app clone this repo.
```
$ git clone git@github.com:jlrodney/anagrams.git
```
Change to the directory
```
$ cd anagrams
$ bundle install
```
To begin the app run the main file
```
$ ruby runner.rb
```

To run the tests, run RSpec
```
$ bundle install
$ rspec
```

An example is shown below
![](https://github.com/jlrodney/anagrams/example.png)


## Further Work to be done on this project
- Try this exercise in a compiled language such as C, C# or Java. This should speed up the process by not having to repeat some of the checking for each loop.
- Instead of using of storing the words list into an array and then looping through the array. I could use a hash pair with each letter of the alphabet assigned to the first 26 prime numbers. This would mean that for each word there would be only one number associated with it (as the prime numbers are multiplied together). We could then scan through the hash of words and their associated values quickly to find matches.

User stories
-------------

```
As an investigator, I would like to check whether a word is an anagram of any of the words in a given list, so that I can solve the mystery of the crime, given the clues left behind.
```
