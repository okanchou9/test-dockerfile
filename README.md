# test-dockerfile
This project is using on Gitlab CI/CD to run the container scan check automatically when you commit Dockerfile into root project folder. If passed the test, script will commit container image to project "clean_zone" then user can download it without any issue.

The following is the preconfig step before scan:

User need to prepared the permission of Gitlab EE ultimate license to enable the function of container scanning
User need to create a Gitlab project named "clean_zone"
User need to generate a personal access token on Gitlab and fill in variable $gitlab_user_email / $gitlab_user_id / $gitlab_user_token on file .gitlab-ci.yml
The following is the scan step(Only 1):

Commit Dockerfile to root project folder and waiting for script completion.
