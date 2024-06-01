## Docker nginx task 
### First task:
You can check the first task by running the `build-run-check.sh` script in the `app-src` folder. Commands from the instruction must be started from the root directory of the repository

    cd app-src
    chmod +x build-run-check.sh
    ./build-run-check.sh

### Second task:
To check the second task, go back to the root of the repository and enter the following command:

    docker compose up -d

For convenience, I decided to publish all docker images on Docker Hub. Thanks to this solution, you can use docker-compose.yml anywhere on your device, as it will use the latest remote images for building from Docker Hub.

