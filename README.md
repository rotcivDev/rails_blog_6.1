# Blog

Welcome to the Blog project! This is a simple Rails application for managing blog posts.

## Prerequisites

Before running the project, make sure you have the following installed:

- Docker
- Docker Compose

## Getting Started

To run the project locally, follow these steps:

1. Clone the repository:

  ```bash
  git clone https://github.com/your-username/blog.git
  ```

2. Navigate to the project directory:

  ```bash
  cd blog
  ```

3. Build the Docker image:

  ```bash
  docker-compose build
  ```

4. Start the Docker containers:

  ```bash
  docker-compose up -d
  ```

5. Create the database and run migrations:

  ```bash
  docker container exec blog_app_1 rails db:create
  docker container exec blog_app_1 rails db:migrate
  ```

6. Open your browser and visit `http://localhost:3000` to see the application.

## Running Tests

To run tests for the project, we use the RSpec gem. Follow these steps:

1. Make sure the Docker containers are running:

  ```bash
  docker-compose up -d
  ```

2. Run the RSpec tests:

  ```bash
  docker container exec blog_app_1 rspec
  ```

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your changes to your forked repository.
5. Submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
