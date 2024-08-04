#!/usr/bin/bash

# will be passed via cmd (env)
ARCH=aarch64
VER=1.0.0

echo "Today is " `date`
echo "Start the data conversion" 

echo $1
echo $2
echo $3

# docker events&

docker run -it \
            --rm \
            -v ${PWD}/original:/home/app/in \
            -v ${PWD}/data:/home/app/out \
            --name dt-converter \
            antonioklsv/subtitles-utility-${ARCH}:${VER} $1 $2 $3

# for debug purpose
# docker container inspect \
#  -f '{{ range .Mounts }}{{ .Name }}:{{ .Destination }} {{ end }}' \
#  dt-converter

# check volumes mapping
# docker ps -a --format '{{ .ID }}' | xargs -I {} docker inspect -f '{{ .Name }}{{ printf "\n" }}{{ range .Mounts }}{{ printf "\n\t" }}{{ .Type }} {{ if eq .Type "bind" }}{{ .Source }}{{ end }}{{ .Name }} => {{ .Destination }}{{ end }}{{ printf "\n" }}' {}
# or 
# docker inspect -f '{{ .Mounts }}' containerid