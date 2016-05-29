## Running

First `docker build -t react-redux .` to build docker img.

Then run `docker run --rm --name react-redux-demo -it -v /c/Users/Sergio/Documents/Kitematic/react-redux:/usr/src/app -p 8080:8080 react-redux` and open <docker.local:8080> in your browser.

## Production Build

Run `npm build` to create a distro folder and a bundle.js file.
