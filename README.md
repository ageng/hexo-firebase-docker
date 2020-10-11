# hexo-firebase-docker

Docker Images with hexo and firebase-cli installed

# Using on Gitlab CI

Here the example of `.gitlab-ci.yml` for Hexo :

```yaml

variables:
    GIT_SUBMODULE_STRATEGY: recursive
    GIT_SSL_NO_VERIFY: "true"

stages:
    - deploy

deploy:
    stage: deploy
    image: isenganime/hexofirebase
    script:
        # build site
        - cd ${CI_PROJECT_DIR}
        - rm -rf node_modules && npm install --force
        - hexo generate
        # upload
        - firebase deploy --only hosting --token ${FIREBASE_TOKEN}
    only:
        - master

```
