# DevContainer Images

Hey there! This is the repository defines the base DevContainer images for multiple languages I have worked with in the past. If you want to work with any of my other code bases, you will probably need to start by building one of the base images contained in this repo.

## What exactly are DevContainers?

DevContainers allow you to run a VS Code development environment inside a docker container. In short this means, that the entire environment is defined in configuration files and startup scripts, and will be hosted as a docker container (VM). For details about the technology see the documentation page [here](https://code.visualstudio.com/docs/devcontainers/containers).

There are three main benefits about this:

-   Setting up the environment is as easy as spinning up the container, and all dependencies will be installed automatically.
-   The container will behave equally on every system, whether it's Windows, MacOS or Linux. More specifically: The container itself runs Linux (usually Debian based), so the applications will feel right at home on Linux servers or even more so in a docker hosting environment.
-   If you are done with the project, just delete the container, and no traces will be left on your system.

### Installing VS Code and Docker

Enough about selling DevContainers, lets get to specifics on how to work with this repository (and all dependent repositories). You will need to install the following three tools:

-   [Docker Desktop](https://www.docker.com/products/docker-desktop/): Default installation will do. Make sure it is configured for Linux containers, but that is the default. Just launch it once and make sure you click through the setup until you see the dashboard. After that you won't need to touch it again.
-   [Visual Studio Code](https://code.visualstudio.com): Also just the default installation is fine. The only extension you need is:
    -   [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers): This connects VS Code to docker, and lets you view and manage the created containers from inside VS Code. On MacOS you might get prompted if you want to allow communication from VS Code to other apps -> That is necessary for this extension to control docker.

All of these tools are also available in pretty much all packet managers, [Homebrew](https://brew.sh) for example even recognizes and installs VS Code extensions.

### Building the images

Once you have all of that installed, checkout the git repository, open the folder in VS Code and open a terminal. To build one of the images, just enter the corresponding folder and execute the build script.

```
cd latex-base
./build.sh
```
