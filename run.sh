#!/usr/bin/env bash

export GRB_LICENSE_FILE=/opt/gurobi811/linux64/gurobi.lic
export GUROBI_HOME=/opt/gurobi811/linux64
export LD_LIBRARY_PATH=/opt/gurobi811/linux64/lib/
export PATH=/opt/gurobi811/linux64/bin/

# source ...
# /usr/lib/jvm/java-8-openjdk-amd64/bin/java \
#   -Djava.library.path=${LD_LIBRARY_PATH} \
#   -Dfile.encoding=UTF-8 \
#   -classpath \
#     ./bin:${LD_LIBRARY_PATH}/gurobi.jar \
#   projects.multipath.ILP.Main

/usr/lib/jvm/java-8-openjdk-amd64/bin/java \
  -Djava.library.path=${LD_LIBRARY_PATH} \
  -Dfile.encoding=UTF-8 \
  -classpath \
    ./bytecode/mapp.jar:${LD_LIBRARY_PATH}/gurobi.jar \
  projects.multipath.advanced.Main 1