# oo-bookstore-challenge
a place to push your bookstore challenges from our OO curriculum

## Getting started
---
Once we've cloned the app down run the following commands:
```
$ bundle install
...
$ ruby seeds.rb
```

This will set up your development environment and generate ```invoice.csv``` which we'll parse into your app.

## Release 0: ```it``` blocks

We can start by translating our pseudocode into ```it``` blocks into our rspec. What methods are we going to need? What are they going to output? In keeping with the Single Responsibility Principle our methods should be fairly easy to test, even before we write them.

For now don't worry about building out the tests, just get the ```it``` blocks written so that we have a nice to-do list for our app:

```
describe '#has_books?' do
  it 'returns false if the inventory is empty'
  it 'returns true when the inventory has items in it'
end
```

It's okay to change these down the line as needed, but it's good to go in with a framework to work within.

Move on when you have written out all the ```it``` blocks for the BookStore class and the Book class.

## Release 1: Bookstore and Books

At this point we can start building out our bookstore class. What are the responsibilities of the bookstore. Once you've passed all your tests check in with an instructor to see what comes next ;)
