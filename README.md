# Book Catalog

Book Catalog is a Ruby on Rails 8 web application designed to help individuals organize and manage their personal book collections.
Users can register, securely log in, and build their own catalog of books with features like search, filtering, and pagination.
The application is deployed on Heroku and uses PostgreSQL as the primary database.

---

## Table of Contents

- [Features](#features)  
- [Technologies Used](#technologies-used)  
- [Getting Started](#getting-started)  
  - [Prerequisites](#prerequisites)  
  - [Installation](#installation)  
  - [Configuration](#configuration)  
  - [Database Setup](#database-setup)  
- [Running the Test Suite](#running-the-test-suite)  
- [Deployment](#deployment)  
- [Project Structure](#project-structure)  
- [Contributing](#contributing)  
- [License](#license)

---

## Overview

Book Catalog provides an intuitive way to manage your personal library online.
It is built with Rails 8 and integrates authentication, filtering, and pagination to keep your collection easy to navigate and secure.

Each user has their own private catalog, ensuring that book collections remain personal and isolated. The application is fully responsive and works seamlessly on both desktop and mobile devices.

---

## Features

- User authentication (via Devise) for secure login/logout.
- Full CRUD operations for managing books.
- Filter books by title, author, or genre directly from the catalog page.
- Pagination to neatly display books in groups of five per page.
- Mobile-friendly design with Bootstrap 5.
- PostgreSQL database for reliability and performance.
- Solid Queue, Solid Cache, and Solid Cable gems included for scalability and real-time features.

---

## Real-World Use Case

Imagine you’ve accumulated a home library of over 300 books. You’ve tried spreadsheets, but it quickly becomes hard to maintain, and you often forget whether you already own a book when browsing at the store.

With Book Catalog, you can:

Quickly add books to your catalog with details like title, author, genre, and publication date.

Filter your collection by title, author, or genre to find books instantly. For example, search “Agatha Christie” to view only her books, or filter by “Science Fiction” to browse just that genre.

Use pagination to view your collection in manageable chunks (five books per page), avoiding overwhelming, endless scrolling.

Edit or update book details if you get a new edition or want to fix an error.

Delete books you’ve sold, donated, or no longer want in your catalog.

Keep your data private: each user only sees their own books, with no accidental sharing.

Over time, your Book Catalog becomes your go-to library tracker, letting you know exactly what you own and helping you avoid duplicate purchases.

---

## Technologies Used

- Ruby 3.3.8  
- Rails 8.0.2  
- PostgreSQL  
- Bootstrap 5  
- Devise for authentication  
- Kaminari for pagination  
- Solid Queue, Solid Cache, and Solid Cable  
- RSpec for testing (optional)  
- Heroku for deployment  

---

## Getting Started

Follow the steps below to run the application locally.

### Prerequisites

- Ruby 3.3.8  
- Rails 8.0.2  
- PostgreSQL (version 14 or later recommended)  
- Node.js and Yarn (for asset compilation)  
- Bundler (install with "gem install bundler")

