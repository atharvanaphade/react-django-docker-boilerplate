# DIY Django and React Boilerplate

## Features (already implemented or planned)

- Backend with Django Rest Framework
- Frontend with React 
- Bootstrap for styling
- Deployment with docker-compose on single VPS
- SSL certificate from Let's encrypt
- PostgreSQL database (not yet configured)
- A dynamic env file for path variables (not yet configured)
- python-decuple for secrets
- Step-by-step instructions how to deploy and how to update application

### Commands

- Copy your backend Django project in the /backend directory and all the needed dependencies to requirements.txt and frontend in the /frontend directory and change the %PROJECT_NAME%.wsgi file name to your Django project name.
- To run the project in development mode :- 
    
    sudo docker-compose -f docker-compose-dev.yml build && up

- To run the project in production mode turn off debug in setting.py and add you CDN configuration to ALLOWED_HOSTS.

    sudo docker-compose build
    sudo ./init-letsencrypt.sh
    sudo docker-compose up

- Make sure you have collected static files and made migrations before running all docker commands, and change the static files folder to "django_static" if u want to serve static files through Django.
- Change the url in the frontend to your CDN, and not localhost, and route all paths in the backend to a particular endpoint and not to blank.
- Remove alpine for faster docker builds.

### Endpoints
- / -> all React endpoints.
- /api -> backend endpoints.
- /admin -> all admin endpoints (highly suggested to change it in production). 
