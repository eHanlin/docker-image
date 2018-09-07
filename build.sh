docker build -t="gcr.io/tutor-204108/tomcat-msm:8.5.31" .
docker push "gcr.io/tutor-204108/tomcat-msm:8.5.31"

docker build -f basejre.dockerfile --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:8.5.31-base" .
docker push "gcr.io/tutor-204108/tomcat-msm:8.5.31-base"

docker build --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:8.5.31-app" .
docker push "gcr.io/tutor-204108/tomcat-msm:8.5.31-app"

docker build -f basejre.dockerfile --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:8.5.31-app-base" .
docker push "gcr.io/tutor-204108/tomcat-msm:8.5.31-app-base"

docker build --build-arg "START_SCRIPT_ARG=run-multiple-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:8.5.31-multiple-app" .
docker push "gcr.io/tutor-204108/tomcat-msm:8.5.31-multiple-app"

docker build -f basejre.dockerfile --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:8.5.31-multiple-app-base" .
docker push "gcr.io/tutor-204108/tomcat-msm:8.5.31-multiple-app-base"

