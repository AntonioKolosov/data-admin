#!/usr/bin/bash

echo "Today is " `date`
echo "Start the data conversion" 

# Get environment
source .env_conv

# Get parameters
SHOW=$1
FILE=$2
LANG=$3

# docker events&

docker run -it \
            --rm \
            -v ${HOSTINPUT}:${DOCKERINPUT} \
            -v ${HOSTOUTPUT}:${DOCKEROUTPUT} \
            --name dt-converter \
            antonioklsv/subtitles-utility-${ARCH}:${VER} ${SHOW} ${FILE} ${LANG}

# for debug purpose
# docker container inspect \
#  -f '{{ range .Mounts }}{{ .Name }}:{{ .Destination }} {{ end }}' \
#  dt-converter

# check volumes mapping
# docker ps -a --format '{{ .ID }}' | xargs -I {} docker inspect -f '{{ .Name }}{{ printf "\n" }}{{ range .Mounts }}{{ printf "\n\t" }}{{ .Type }} {{ if eq .Type "bind" }}{{ .Source }}{{ end }}{{ .Name }} => {{ .Destination }}{{ end }}{{ printf "\n" }}' {}
# or 
# docker inspect -f '{{ .Mounts }}' containerid
