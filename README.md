# Linktree Clone 🌲


### Live demo :  https://v1v3k-linktree-clone.web.app

### Screenshots

Splash screen              |Custom animated banner     |  Hover effect for web
:-------------------------:|:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/64553247/138554855-f602ffb4-a8ee-4aef-8367-5c8ba3a28178.png)  |  ![image](https://user-images.githubusercontent.com/64553247/138548852-d529b99e-0d6d-410d-8858-c6a8711ba65e.png) | ![image](https://user-images.githubusercontent.com/64553247/138548975-e9d739b9-d726-44b4-a8ff-620923dd4100.png)


### Important

On splash screen we are using network image which will work fine while debugging on mobile but it will through an error when trying to debug on brower.
It is because on desktop browser it uses CanvasKit renderer.
So instead of CanvasKit renderer you should consider using HTML renderer

The HTML renderer can load cross-origin images without extra configuration. so you could use these commands to run and build the app.


<div align="left">
    <pre>
flutter run -d chrome --web-renderer html // to run the app
flutter build web --web-renderer html --release // to generate a production build</pre>
</div>

