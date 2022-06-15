### Run Website & Verify

That's right, a nice test in production deal, you went through all the steps to make sure what you were doing was valid HTML, you checked the docker image to make sure that it would build and run properly, so now you get your reward, a working app!

`docker run --rm -itp 8080:8080 localhost/demo-web:latest`{{exec}}

Now you should see your sample website up and running in the 'Demo Web' tab. Congrats on finishing the course!

> **NOTE**: 
> You will not receive completion if the website is not online and functional.
