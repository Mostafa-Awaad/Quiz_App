# 🎯 Flutter Quiz App

## 📌 Introduction

The **Flutter Quiz App** is an interactive quiz application designed to test users' knowledge of Flutter and Dart. Users can answer multiple-choice questions, receive immediate feedback on their answers, and review their performance on a results screen. The app allows users to restart the quiz for further practice and improvement.

This project demonstrates essential Flutter and Dart concepts, including widget composition, state management, list operations, function passing, and conditional rendering.

## 📜 Table of Contents


- [Usage](#usage)
- [Features](#features)
- [Key Concepts](#key-concepts)
- [Widgets Used](#widgets-used)
- [Examples](#examples)

## Usage

  1. Start the quiz by selecting an answer for each question.
  2. View the results screen to see which answers were correct.
  3. Restart the quiz to try again and improve your score.

## Features

  - 🎯 Multiple-choice quiz with Flutter-related questions.
  - 📊 Results screen displaying correct and incorrect answers.
  - 🔄 Quiz restart functionality to practice and improve.
  - 🏗 Dynamic UI updates based on user interactions.
  - 🔢 Randomized answer order for a better quiz experience.

## Key Concepts
This project incorporates several key Flutter and Dart concepts, including:

### 🔧 State Management
Use of StatefulWidget to track quiz progress and manage UI updates.
### 🔀 Function Passing
Passing functions as arguments to child widgets for handling user interactions dynamically.
### 🔄 Conditional Rendering
Using `if` statements and ternary expressions to control UI elements based on user choices.
### 🔢 List Operations
Using Dart list methods such as:
- `shuffle()` – to randomize answer order.
- `add()` – to dynamically add elements to a list.
- `where()` – to filter lists based on conditions.
- `map()` – to transform lists (e.g., convert text answers into tappable buttons).
- 
### 🎭 Custom Data Structures
- Using Dart classes to structure quiz questions and answers.
- Implementing a class with utility methods to handle shuffled answers.
- 
## Widgets Used
- `Column` and `Row` – for structuring the UI.
- `ElevatedButton` – for answer buttons with customizable styles.
- `Text` – to display questions and results.
- `SingleChildScrollView` – to allow scrolling on the results page.
- `Expanded` & `Flexible` – for responsive UI layouts.

## Examples
Check out the `screenshots/` directory (if available) for UI previews.
