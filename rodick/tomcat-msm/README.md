
## ROOT 版
build and deploy
```
docker build -t="gcr.io/tutor-204108/tomcat-msm:8.5.31" .
gcloud docker -- push "gcr.io/tutor-204108/tomcat-msm:8.5.31"
```

---

## PATH 版
build and deploy
```
docker build --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:8.5.31-app" .
gcloud docker -- push "gcr.io/tutor-204108/tomcat-msm:8.5.31-app"
```