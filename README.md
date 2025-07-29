# Book Catalog

Book Catalog is a Ruby on Rails 8 web application designed to help individuals organize and manage their personal book collections.  
Users can register, securely log in, and maintain their own private catalog of books with features like search, filtering, and pagination.  
The application is deployed on **Heroku** and uses **PostgreSQL** as the primary database.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Real-World Use Case](#real-world-use-case)
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

Book Catalog provides an intuitive and secure way to manage your personal library online.  
It is built with Rails 8 and integrates user authentication, flexible filtering, and clean pagination to keep collections easy to browse and maintain.  

- Each user has their own **private catalog** — you only see the books you add.  
- The interface is fully **responsive**, working smoothly on desktop, tablet, and mobile.  
- Designed for scalability and deployed to **Heroku**, with PostgreSQL ensuring reliability and performance.

---

## Features

- **User Authentication**  
  - Sign up, log in, and log out securely using Devise.  

- **Book Management**  
  - Add, edit, view, and delete books with attributes such as title, author, genre, and publication date.  

- **Filtering**  
  - Search books by **title**, **author**, or **genre** from the catalog page.  

- **Pagination**  
  - Books are displayed five per page for easier browsing with Kaminari.  

- **Responsive Design**  
  - Built with Bootstrap 5 for a modern, mobile-friendly UI.  

- **Scalability Ready**  
  - Includes Solid Queue, Solid Cache, and Solid Cable gems for background jobs, caching, and real-time updates.  

---

## Real-World Use Case

Imagine you have a personal collection of hundreds of books scattered across shelves, boxes, and maybe even different rooms. You often find yourself:  

- Forgetting if you already own a book while shopping.  
- Struggling to quickly find all books by a certain author.  
- Losing track of books you’ve lent or donated.  

**Book Catalog solves this problem.**  

- Add every book you own with its details.  
- Quickly filter your catalog to see all books by *Agatha Christie* or just the *Science Fiction* genre.  
- Browse your library in neat groups of 5 books per page — no overwhelming scrolling.  
- Edit entries when you update editions or fix errors.  
- Delete books when they’re no longer in your collection.  
- Rest assured: your catalog is private and separate from all other users.  

Over time, your Book Catalog becomes your personal library system, helping you avoid duplicate purchases and keeping your collection organized.

---

## Technologies Used

- **Ruby** 3.3.8  
- **Rails** 8.0.2  
- **PostgreSQL** (primary database)  
- **Bootstrap 5** for styling  
- **Devise** for user authentication  
- **Kaminari** for pagination  
- **Solid Queue**, **Solid Cache**, **Solid Cable** for jobs, caching, and real-time support  
- **RSpec** for testing (optional)  
- **Heroku** for deployment  

---

## Getting Started

Follow the steps below to run the application locally.

### Prerequisites

Make sure you have the following installed:

- Ruby 3.3.8  
- Rails 8.0.2  
- PostgreSQL (v14 or newer recommended)  
- Node.js and Yarn (for handling JavaScript assets)  
- Bundler ("gem install bundler" if you don't have it already)  

### Installation

1. Clone the repository:

   => bash 
   git clone <your-repo-url>
   cd book_catalog
