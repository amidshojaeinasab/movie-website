# Movie Website

A movie and TV series website built with **PHP and MySQL** as a personal learning project.

The project provides a platform for browsing movies, TV series, and actors, with dedicated pages for movie and actor details. It was developed to practice PHP development, database integration, and basic project structure.

## Features

- Browse movies and TV series
- View movie details
- Browse actors
- View actor profiles and biographies
- Display movie ratings and descriptions
- Organize movies by genres
- Display featured content using a homepage slider
- Dynamic content loading from a MySQL database
- URL-based routing

## Technologies Used

- **PHP** – Backend development
- **MySQL / MariaDB** – Database management
- **HTML5** – Page structure
- **CSS3** – Styling
- **JavaScript** – Frontend interactions
- **Apache** – Local development server

## Project Structure

```text
movie-website/
│
├── controllers/    # Handles application requests
├── core/           # Core application files
├── public/         # Public assets and resources
├── views/          # Page templates
│
├── db_movie.sql    # Database structure and sample data
├── global.php      # Global helper functions
├── routers.php     # URL routing
├── index.php       # Application entry point
└── .htaccess       # Apache configuration
```

## Installation

Follow these steps to run the project locally.

### 1. Clone the repository

```bash
git clone https://github.com/amidshojaeinasab/movie-website.git
```

### 2. Move the project

Place the project inside your local web server directory.

For example, if you are using Laragon:

```text
C:\laragon\www\
```

### 3. Create the database

- Open phpMyAdmin.
- Create a database named `db_movie`.
- Import the `db_movie.sql` file into the database.

### 4. Configure the database connection

Update the database connection settings in the project's configuration files with your local MySQL credentials.

### 5. Configure URL routing

Make sure Apache's `mod_rewrite` module is enabled and `.htaccess` is supported.

If you use a different project directory name, check the base path configuration in `global.php`.

### 6. Run the project

Open the following URL in your browser:

```text
http://localhost/movie-website/
```

## Database

The project includes an SQL dump with sample data and tables for:

- Movies
- Actors
- Genres
- Users
- Homepage slider

## Project Purpose

This project was developed as a practical exercise to improve my PHP development skills and gain hands-on experience with:

- Organizing PHP application files
- Working with MySQL databases
- Retrieving and displaying dynamic data
- Implementing URL routing
- Separating controllers and views

## Author

**Amid Shojaei**

GitHub: [@amidshojaeinasab](https://github.com/amidshojaeinasab)

---

*This is a learning project and is still open to improvements and further development.*
