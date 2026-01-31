# Pagination in Flutter

This document explains how to implement pagination (infinite scrolling) in Flutter using ListView, ScrollController, and Cubit from flutter_bloc.

## What is Pagination?

Pagination means loading data in small chunks (pages) as the user scrolls.

Instead of:

Loading 1000 items at once ❌

We do:

Load 20 items

User scrolls → load next 20

Repeat until no more data ✅

## Why Use Pagination?

🚀 Better performance

📱 Lower memory usage

🌐 Efficient API calls

😊 Better user experience

## Common Pagination Types
### => Page-Based Pagination
?page=1&limit=20

### => Offset-Based Pagination
?offset=40&limit=20

### => Cursor-Based Pagination
?cursor=abc123


Cursor-based pagination is recommended for large-scale applications.

Architecture Used

Cubit for state management

ScrollController for scroll detection

Immutable state

Infinite scrolling pattern

State Structure

The pagination state typically contains:

items – Loaded data

isLoading – Prevent duplicate requests

hasMore – Stop loading when data ends

class PaginationState {
  final List items;
  final bool isLoading;
  final bool hasMore;
}

Pagination Flow

Screen loads → fetch first page

User scrolls near bottom

Fetch next page

Append new data to list

Stop when hasMore == false

UI Behavior

Displays list items

Shows loading indicator at the bottom

Stops requesting data when all pages are loaded

Best Practices

✅ Keep pagination logic inside Cubit/Bloc

✅ Prevent multiple requests at the same time

✅ Always check hasMore before fetching

✅ Show loading indicator only at the bottom

✅ Handle empty and error states

✅ Prefer cursor-based pagination for large datasets

Optional Libraries

You can use these packages instead of implementing pagination manually:

infinite_scroll_pagination

flutter_paginator

When to Use Pagination

Use pagination when:

Working with large lists

Fetching data from APIs

Building feeds (videos, products, posts)

Optimizing memory and performance

