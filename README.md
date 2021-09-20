# flutter_web_dashboard

### This project only supports flutter version ```>=2.5.0 <3.0.0```

## Setting it Up

Step 1. Install Flutter on your desktop and run ```flutter doctor -v``` to check if everything is okay.

Step 2. Git Clone this Project and open up in your favourite IDE

Step 3. Run ```flutter pub get``` to get all the dependencies that are required for this project. if facing any issue then you can run ```flutter clean``` when would clean up the workspace and then you can run the ```flutter pub get``` command

<img width="636" alt="Screenshot 2021-09-11 at 1 11 13 AM" src="https://user-images.githubusercontent.com/48326585/132908541-a3fe86ea-4a14-4375-9194-f8ada83ab88f.png">

Step 4. Now we are all prepared to run our application.


## Running on Localhost 

Step 1. Check if the flutter recognies your browser as device by running this command ```flutter devices``` if you are unable to find any browser then you would have to enable 

<img width="571" alt="Screenshot 2021-09-11 at 1 11 47 AM" src="https://user-images.githubusercontent.com/48326585/132908594-85b9d0e6-e632-407d-a672-d5f53366da30.png">

Step 2. Now that flutter recognises our device we can now run our project using this command ```flutter run -d {$device_name}``` Example: ```flutter run -d chrome```

Step 3. Now your application can be accessed at ```http://localhost:52266/```

Note : <b>No Credentials Required and State Management is not yet properly done as of now but its presentable.</b>  






