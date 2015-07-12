---
tags: search, rails, intermediate, SQL, partials
language: ruby
resources: 0 
---

### Implementing a Simple Search Feature in Rails

## Objectives

* Learn how to build a basic search feature for a Rails application
* Incorporate SQL into ActiveRecord queries for precise database querying

## Setup

Our app is super simple. We have a database of random words. The database will be populated by a seed file (we're using Faker to generate random words). This is going to be a super popular app, clearly.

### Application flow

* A user should be able to type in a phrase into the search form, and our application should do the following:
  * check if the word exists exactly in the words table (aka conduct an **Exact Search**)
  * check if something LIKE the query exists in the words table (aka conduct a **Fuzzy Search**)
* Upon submitting the search query, the user should either be shown a page of the search results, or be redirected to the exact word match
* If the query returns nothing, a message should appear on the results page indicating that

# welcome controller (welcome/search) => | has SEARCH BAR as a form with a get request

# fuzzy match => search/index
# exact match => words/show
# no match => search/index with corresponding message (that none is found)

### What You Need

x * Appropriate migration for word table
x * Word Model
x * Search class (which does not need to inherit from ActiveRecord::Base)
x * Words Controller
x * Search Controller
* Corresponding routes
x * search/index view to render search results
x * words/index view to render list of all words which link to their show pages 
x * words/show view to render one word
x * Search Bar on a root page (handled by a welcome controller -- we will explicitly declare this to be welcome/index). 
* The search bar should be a form that submits (as a GET request) to render the search results, which is handled by the index method on the search controller.


**Pass the model and feature tests**

## Up Next

Building a more sophisticated search functionality with Elastic Search.
