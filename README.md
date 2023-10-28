# Capstone Project 1 - Flask Web Application
In this project, We will see how a complete CI/CD works for flask app. 

We have 
1. Dockerfile - dockerfile for the app. 
2. docker-compose.yml - for local testing of the app
3. Jenkinsfile - CI/CD for the app. This builds the image and push to (dockerhub repo)[https://hub.docker.com/repository/docker/devopsfarm/kloudlab-capstone-flaskapp/general]. additionally, It deploys the new docker image to ec2 instance.
4. .github/workflows/python-app.yml -  github action to run SCA, Linting and tests for each PR on main branch.

![CI CD stack](ci-cd-flask-app.drawio.svg)

This is a simple web application built with Flask, a lightweight Python web framework. The application serves as a template for creating basic web applications using Flask.

## Installation

1. Clone the repository:

    ```bash
    git clone git@github.com:kloudlab-trainings/capstone-project1.git
    ```

2. Navigate to the project directory:

    ```bash
    cd capstone-project1
    ```

3. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```

## Usage

To run the Flask application, use the following command:

```bash
python app.py
```

Once the application is running, you can access it at [http://localhost:5000](http://localhost:5000) in your web browser.

## Tests

To run the unit tests for the application, use the following command:

```bash
pip install -r requirements.txt
python -m unittest discover -s tests
```

After running the tests, you can view the HTML test report in the `test-reports` directory.

## Docker

You can also build and run the application using Docker. Make sure you have Docker installed. Use the following commands:

```bash
docker build -t flaskapp .
docker run -p 5000:5000 flaskapp
```

## Docker Compose
You can also build and run the application using docker-compose in local envionment.

```bash
docker compose up 
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
