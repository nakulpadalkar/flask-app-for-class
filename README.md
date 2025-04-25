# Boston Housing Price Prediction Flask App

This repository contains a Flask web application for predicting housing prices using the Boston Housing dataset. The application provides an interactive interface for users to input features and view the predicted housing prices along with relevant data visualizations.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have the following installed:

- Python 3.10
- pip (Python package manager)

### Forking the Repository

1. Go to the main page of the repository on GitHub.
2. In the top-right corner of the page, click **Fork**.

This creates a copy of the repository in your GitHub account.

### Setting Up Your Local Environment

1. Clone your forked repository to your local machine:
   ```
   git clone https://github.com/nakulpadalkar/flask-app-for-class.git
   ```
2. Navigate to the cloned directory:
   ```
   cd flask-app-for-class
   ```
3. Create a virtual environment:
   ```
   python3 -m venv .venv
   ```
4. Activate the virtual environment:

- On Windows:
  ```
  .\venv\Scripts\activate
  ```
- On macOS and Linux:
  ```
  source venv/bin/activate
  ```

5. Install the required packages:

### Running the Flask App

1. Set the environment variable for Flask:

- On Windows:

  ```
  set FLASK_APP=app.py
  ```
- On macOS and Linux:

  ```
  export FLASK_APP=app.py
  ```

2. Run the Flask application:

   ```
   flask run
   ```
3. Open your web browser and go to `http://127.0.0.1:5000/` to view the app.

## Upgrading heroku build stack from 20 to 22

Setting Heroku stack. In this case to heroku-20 equivalent with Ubuntu 20.04

```
  heroku stack:set heroku-20
```

Since you are using a different stack, the old cache may not be compatible. Clearing cache:

```
  heroku plugins:install heroku-builds
  heroku builds:cache:purge -a appname
```

Triggering a rebuild:

```
  git commit --allow-empty -m "Purge cache"
  git push heroku master
```

You have to make sure that the buildpack you are using is compatible with heroku-22. If it is not, it will not work. You will have to wait for the maintainer to update, use a different buildpack or fix the buildpack yourself and use that. Following this step by step is similar to deploying an entirely fresh app.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments
