In previous exercises I had environment variable in frontend's dockerfile API_URL=localhost:8000. I removed this so that the app uses the default route /api/.

I also made new locations in the nginx.conf file that point to backend.

No changes were made to backend dockerfile or docker-compose.yml for this exercise.
