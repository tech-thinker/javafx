# javafx
Docker base image for JavaFX development

## Environment Variables:
- `DISPLAY`: It use to sepecify the display server.

## How to use?
### Using Docker:
- Create `Dockerfile`
```
# Builder stage
FROM techthinkerorg/javafx:version as builder

RUN mkdir /src
WORKDIR /src
COPY . /src/
RUN ./gradlew build

# Executable stage
FROM techthinkerorg/javafx:version
RUN mkdir /app
WORKDIR /app
COPY --from=builder /src/build/libs/your-app-with-version.jar /app/app.jar

CMD java -Dprism.order=sw -jar /app/app.jar
```
- Run `docker build  -f ./Dockerfile -t your-image-name .`
- Run `docker run your-image-name`
