# Space News
### Hi there, I'm Muharrem <img src = "https://raw.githubusercontent.com/MartinHeinz/MartinHeinz/master/wave.gif" width = "42"> 
#### Thank You for taking the time to view my repository 

## <h2> About This App <img src = "https://c.tenor.com/JsoERRQcZqYAAAAi/thumbs-up-joypixels.gif" width = "42"></h2>
This application is a space news application and shows developers how to use exchangeable services. The application was coded with SwiftUI and used MVVM architecture. The application was created using data from the Spaceflight News API. First, we wrote our model. Here, we have created a model of the JSON data that comes to us about space news. In addition, we organized the incoming time data in a way that the user could understand and made it ready for use. Then we moved on to service writing. Here you will see three different files. The first file is to get the current data from the internet. So it's a Web service. We created it with URLSession as usual in this service. We analyzed the following data with our model using JSONDecoder. In our local service, we took a sample from the JSON data coming into the application. In our service, we took the data using the Bundle.main.path method and analyzed it with our model using JSONDecoder. If you notice here, the functions of the two services are almost similar. In this way, by applying the NetworkService protocol we use in a separate file to our services, we can determine whether we will receive data from the internet or local data by simply changing the service name. Then we created our ViewModel file. Here we imported the preceding data into another model. Then we created a different function containing the service that fetched the data. If you pay attention here, we have given the typed string so that the services can be distinguished from each other. In this way, we have become able to distinguish where to get the data in our ViewModel file. In addition, we created a new structure called Constants here, determined the web service URLs and local file paths, and used them in the ViewModel. Then we created our home screen and detail page. We made the design of the news images that we use on our home page on a separate page. We also created animations for the user while the news was loading on the home page. In addition, we opened the news URL that comes with JSON data via Safari so that the user can look at the details of the news more on the detail page. We did this with the Link class. Finally, we added the refreshable method to update the incoming data.

<a href="https://www.spaceflightnewsapi.net/" target="_blank">Spaceflight News API</a><br>



<h2> Used Technologies <img src = "https://media2.giphy.com/media/QssGEmpkyEOhBCb7e1/giphy.gif?cid=ecf05e47a0n3gi1bfqntqmob8g9aid1oyj2wr3ds3mg700bl&rid=giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='72px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/swift-icon.svg'>
  </div>
</div>

<h2> Used Language <img src = "https://media.giphy.com/media/Zd6jPg8hcp4Q3vrvjo/giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='82px' src 
     ='https://upload.wikimedia.org/wikipedia/commons/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg'>
  </div>
</div>

<h2> Images <img src = "https://media2.giphy.com/media/psneItdLMpWy36ejfA/source.gif" width = "62"> </h2>
  <div class="column">




https://user-images.githubusercontent.com/68854616/236562861-3e4cdd4e-227d-41e8-bd98-ee7037484750.mp4







  </div>
<h2> Connect with me <img src='https://raw.githubusercontent.com/ShahriarShafin/ShahriarShafin/main/Assets/handshake.gif' width="100"> </h2>
<a href = 'mailto:muharremkoroglu245@gmail.com'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/gmail-logo-2561.svg"/></a> &nbsp;
<a href = 'https://www.linkedin.com/in/muharremkoroglu/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/linked-in-alt.svg"/></a> &nbsp;
<a href = 'https://muharremkoroglu.medium.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/medium.svg"/></a> &nbsp;
<a href="https://www.instagram.com/m.koroglu99/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="_._.adam._"  width="32px" align= 'center' /></a> &nbsp;
<a href = 'https://synta-x.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/internet-svgrepo-com%20(2).svg"/></a> &nbsp;


