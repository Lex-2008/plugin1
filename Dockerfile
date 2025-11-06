ARG ARCH=amd64
FROM ${ARCH}/ubuntu:24.04
RUN apt-get update && apt-get install -y ninja-build libz-dev build-essential pre-commit clang-format libxkbcommon-x11-dev libglx-dev libgl1-mesa-dev git curl pkg-config python3.12-venv cmake zip unzip tar file libglib2.0-0 libdbus-1-3 libxcb-cursor0
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
ENTRYPOINT /bin/script.sh
