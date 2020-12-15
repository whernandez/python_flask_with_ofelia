Python Flask App + Ofelia Service + Dockerization
===========================================

##### Requirements
1. Install Docker: https://docs.docker.com/get-docker/

2. Install Docker Compose: https://docs.docker.com/compose/install/

3. Install Traefik: https://hub.docker.com/_/traefik 
    ```bash
        $ docker pull traefik
    ```

4. Set docker-compose.yml with your setup

5. Edit build.sh with your values in the sections

##### Run Python App  

1. Clone this repository

    ```bash
        $ git clone https://github.com/whernandez/python_flask_with_ofelia.git
    ```

2. Copy .env.sample to .env
    
3. Start the build
    ```bash
        $ make build-prod
    ```
	
4. The build.sh file will prepare the image with your setup

##### Run Ofelia Service 

1. Go to ofelia dir
    ```bash
        $ cd ofelia
    ```

2. Setup the config.ini file with your services. For more details see ofelia repo https://github.com/mcuadros/ofelia

3. Run container
    ```bash
        $ docker-compose up -d --build
    ```