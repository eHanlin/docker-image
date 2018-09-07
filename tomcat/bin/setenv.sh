export JAVA_OPTS="$JAVA_OPTS -agentpath:/opt/cprof/profiler_java_agent.so=-cprof_service=${APP_NAME:-unknown},-cprof_service_version=${APP_VER:-unknown}"

