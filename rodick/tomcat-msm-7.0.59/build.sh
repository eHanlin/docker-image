TOMCAT_VER="7.0.59"

docker build -t="gcr.io/tutor-204108/tomcat-msm:$TOMCAT_VER" .
docker push "gcr.io/tutor-204108/tomcat-msm:$TOMCAT_VER"

docker build --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-base" .
docker push "gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-base"

docker build --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-app" .
docker push "gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-app"

docker build --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-app-base" .
docker push "gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-app-base"

docker build --build-arg "START_SCRIPT_ARG=run-multiple-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-multiple-app" .
docker push "gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-multiple-app"

docker build --build-arg "START_SCRIPT_ARG=run-app-war.sh" -t="gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-multiple-app-base" .
docker push "gcr.io/tutor-204108/tomcat-msm:${TOMCAT_VER}-multiple-app-base"

