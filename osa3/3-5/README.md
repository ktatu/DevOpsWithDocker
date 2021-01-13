Dockerfiles are from ex. 3.1. 

Frontend's dockerfile was already pulling node:alpine so the only optimization I managed to find compared to previous image was serving the production build with npm start instead of installing and using serve.
This brought the frontend image's size down to 328 MB from 364 MB.

Backend's size went down to 129 MB from 298 MB with using alpine.
