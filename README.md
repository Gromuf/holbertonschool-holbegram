## Resources

**Read or watch**:

- [Dart - Cheatsheet](/rltoken/vNcJwx9uH1oO97J3weOg2Q)
- [FlutterFire Overview](/rltoken/2pqfv23C5fIPlhQuc8-lzw)
- [Getting started with Firebase on Flutter](/rltoken/HT04HWjRJGP6J-TRB6USKA)
- [Get Started with Firebase Authentication on Flutter](/rltoken/RPOfxJurI2FTxqvM3_Rz7g)
- [Cloud Storage on Flutter](/rltoken/P6NOA7DAhr4Nj51tnZxaFQ)
- [Layouts in Flutter](/rltoken/w2ZjcQ9A0uJy4l1z2sehcQ)
- [Introduction to widgets](/rltoken/bnUF2_6TmceGXZgRMpyW_A)
- [Cloudinary Storage Images uploading | Flutter](/rltoken/MemgVBz8hW7Rh5Ty_qtpbA)

**Every Flutter Widgets**

- [Every Flutter Widget Explained](/rltoken/pUuGD0ZBuuTUsLAsubY2hA)

## Requirements

**Create your project :**

Open you're command-line tool

- `flutter create holbegram`
- `cd holbegram`
- `flutter run`

**Step up your Firebase**

For the backend, we are going to use Firebase(Firebase is a Backend-as-a-Service (BaaS) app development platform that provides hosted backend services such as (`a real-time database`, `cloud storage`, `authentication`, `crash reporting`, `machine learning`, `remote configuration`) and hosting for your static files. However, for storing and managing images, we will use Cloudinary, which is a cloud service that provides an easy-to-use solution for managing images and videos, including features for storing, transforming, and delivering media content. Cloudinary will handle the storage and retrieval of image files, while Firebase will handle the authentication and database functionalities.

Let's start…

go to `https://firebase.google.com/` and create an account then Let's create a new project in firebase.

Go to Firebase Console and click Add Project and then you have to go through some steps.

**First**, we are going to build a fire_base app called `holbegram`:

![FireBase_Creating_new_project.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/effcaadc5053cd0f13321f3da0ca7af485e48499.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=18a61521691b5f7d99f3f1af08ef436b905d7720e61a637167e9ec5992e0a0f1)

**Second** Disable Google Analytics for this project:

![next_step_1.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/75475181f194def86264d0898b5ccde396c21725.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=dd115733b6413effb4bad965dbb71bdc13a17e0822bab23849edbb43ef078071)

**Authentication**

Click on Enable the Authentication: Enable the Email/Password

![3.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b25d3fd7c4d0bd2ffb3dd8308ecaf22f00794548.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=f3fce51afb2b2e122fe136221f5bce4be7f065bad79572c89eeb9c6351bfef70)

![4.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/7f78a5264c27e64db051eeec0edd2ed872c9beba.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=5741c660b0400c95de3b86a803c6e5a1594fbbfe79161da935686bbec0af78fa)

![5.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/60f7d7c2e8b28345beb62365d71a737182693ff2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=a7381ff2525ee367de2b2f5d003641f1619db2396ab20dfa1046b50ea8fd131c)

**Database**

Well done! Now you are going to move to the next task which is creating a database.

To do that follow the following steps:

1- Go to Firestore Database then click on Create Database.

2- Choose “start in test mode”

![6.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/fcb8a7236705b8a58455fa12972d20c66712cf64.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=5245d8ed8cddbaa5864c996dd537ace9768bc589fd8b1829886697abc0a86f11)

3- choose the location that is close to you.

![7.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/2cccf7ed30807a79d66640d0c862b62b41e28750.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=42caf1a6c888f3642d5ae44d1b71472e691fe93f7059b88d209d953db587442b)

4- Go to rules:

![8.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/ee6587e9101eb092270dbe1582bfc85bfc951c95.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=ab2b868d79d8e12551e80632716da737707dfa32dd71265660fa3b2762655be9)

Finally, press Publish

**Adding Firebase to our AppSo now let’s add Firebase to our app:If you want to use Android Follow the Android SupportIf you want to work with iOS follow the iOS Support**

# **Adding Android support**

Registering the App

In order to add Android support to our Flutter application, select the Android logo from the dashboard. This brings us to the following screen:

![10.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/79c7e4222312d48e0c162322f2d138f476e2d0c0.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=a7815c81f880e8611b6f830665c45e1425e370c74669e85fe7170940ad54d43a)

The most important thing here is to match up the Android package name that you choose here with the one inside of our application.

The structure consists of at least two segments. A common pattern is to use a domain name, a company name, and the application name:

`com.example.holbegram`

Once you’ve decided on a name, open `android/app/build.gradle` in your code editor and update the applicationId to match the `Android package name`:

Example of File `android/app/build.gradle`

```
...
defaultConfig {
    // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
    applicationId 'com.example.holbegram'
    ...
}
...
```

You can skip the app nickname and debug signing keys at this stage. Select Register app to continue.

**Downloading the Config File**

The next step is to add the `Firebase configuration` file into our Flutter project. This is important as it contains the API keys and other critical information for Firebase to use.

Select Download `google-services.json` from this page:

![dowload_android.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/29220467a87b78d62f287d431dc5c308470c01b9.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=3717ea914f191f795179403b128277b6cfef2d414c3749c7baa147977df5caee)

Next, move the `google-services.json` file to the `android/app` directory within the Flutter project.

**Adding the Firebase SDK**

We’ll now need to update our Gradle configuration to include the Google Services plugin.

Open `android/build.gradle` in your code editor and modify it to include the following:

Example of File `android/build.gradle`

```
buildscript {
  repositories {
    // Check that you have the following line (if not, add it):
    google()  // Google's Maven repository
  }
  dependencies {
    ...
    // Add this line
    classpath 'com.google.gms:google-services:4.3.13'
  }
}

allprojects {
  ...
  repositories {
    // Check that you have the following line (if not, add it):
    google()  // Google's Maven repository
    ...
  }
}
```

Finally, update the app level file at`android/app/build.gradle` to include the following:

Example of File `android/app/build.gradle`

```
plugins {
    id 'com.android.application'
    id 'com.google.gms.google-services'
}

dependencies {
    // Import the Firebase BoM (updated)
    implementation platform('com.google.firebase:firebase-bom:33.5.1')

    // Add the dependencies for any other desired Firebase products
    // https://firebase.google.com/docs/android/setup#available-libraries
}
```

With this update, we’re essentially applying the Google Services plugin as well as looking at how other Flutter Firebase plugins can be activated such as Analytics.

From here, run your application on an Android device or simulator. If everything has worked correctly, you should get the following message in the dashboard:

![final_step.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/eca3dbd42b0d5c6af14cb2292bb7ef321b9d6fa3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=1a1aa588195599fcba220fde2844b46aea2fa585b8d535749df00b096a90bb5e)

# **Adding iOS support**

In order to add Firebase support for iOS, we have to follow a similar set of instructions.

Head back over to the dashboard and select Add app and then iOS icon to be navigated to the setup process.

**Registering an App**

You Should have **Xcode** installed in your PC:

Once again, we’ll need to add an “iOS Bundle ID”. It is possible to use the “Android package name” for consistency:

![apple_1.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/f45889853f3e6c71ef12e7a13889c9378e89c472.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=0bac26322882139a011ab23927b6903d7e339570275e8c9f3e82f49e29e88a81)

You’ll then need to make sure this matches up by opening the iOS folder up in `Xcode`

![Xcode.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/9d7946cee42b4fe2f94cd07c95c42b3a58f1285f.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=58bdfc8df0dba30557a971200528db421bb4b3a046bec340ca903cb00cf059a1)

- General

![Runner.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/83c1b8343fb170c1162d3eb0d022aa50fb04ce06.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=fe6ecc17895f93b2b122ae97ee8fdd1af805570ccc1745023ac5057ca31a4814)

Now go back to your firebase and add the iOS Bundle ID

after that Download the configuration file

**Downloading the Config File**

Drag and Drop the file `GoogleService-Info.plist` and move this into the root of your Xcode project within `Runner`:

![gcc3q.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b13f1b0452f1145f980d439a4dcda17a2d4d0f5c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=d882f2020c7b9cfc259e6ca9afc01a8eb97895950db8f1b9b68b55117d052203)

![apple_download.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/d8d7fb980a6bf8db79fca2b2f029d4f423767b80.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=1fe676599555d90c60476c396c5732f1bafb2ff63f96b9a22021b1bcffb666d4)

Be sure to move this file within Xcode to create the proper file references.

## Tasks

### 1.

"Now after we set our Firebase we gonna start build our Application, First we are going to create Three screens \`Login Page\` \`Sign up Page\` and \`Upload image Page\`.\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n!\[resize1.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/138de426ea182abb86ae90b76e6517ab4794ba2a.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=458cfd078de5f7548bc81a3d66614346d21636e0cdb3fc25e5d5fd16578a3664) !\[resize2.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/c8e3e89811dfc10d61c27bf5be23cfbf1eb8ca99.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=e5a23f1a914164bf3a4282c67e417cb3681c5242639dbb0cab74714cff1f3949) !\[WhatsApp_Image_2022-11-26_at_15.51.35_30.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b15f8b2a55c6d8ba52fe0adf343bc5acd40a2ceb.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=4434f2442555a82229628210e1bfce11ed8a3482c2506f17cfa38d02f406e5b6)\\r\\n\\r\\n\\r\\n\\r\\n\*\*In your lib folder\*\*:\\r\\n\\r\\n\* create new folder named \*\*screens\*\*:\\r\\n\\t\* inside the \*\*screens\*\* folder create 3 files named:\\r\\n\\t\\t\* login\\\\\_screen.dart\\r\\n\\t\\t\* signup\\\\\_screen.dart\\r\\n\\t\\t\* upload\\\\\_image\\\\\_screen.dart\\r\\n\\r\\n!\[folders.png\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/09362f244f473704661a68ffa94e15bcd3ecd97d.png?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=adb2cc64d01cc79b2b29449bc788938e4d83dab9b93a2c28ba4ccac02c1e4d95)\\r\\n\\r\\n\* create new folder named \*\*widgets\*\*:\\r\\n\\t\* inside the \*\*widgets\*\* folder create 1 file named:\\r\\n\\t\\t\* text\\\\\_field.dart\\r\\n\\r\\n!\[widget_text.png\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/c3a2e750023c4588d8e57fe57fb327183a9df5bb.png?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=68f5442ab243b865526b273294c3365f2478cfbb24ba8903ce13394392f88082)\\r\\n\\r\\n\\r\\n\*\*Initialization App\*\*\\r\\n\\r\\nInstall these packages:\\r\\n\\r\\n\* \[firebase_auth\](/rltoken/PCtSeP6u5iTMeYF2GCkuQg) : \`flutter pub add firebase_auth\`\\r\\n\* \[firebase_database\](/rltoken/XxBGYPjJR_VnypLH1WKkDw) : \`flutter pub add firebase_database\`\\r\\n\* \[cloudinary_flutter\](/rltoken/Kkv6W9cD9E26zqpnJxR7gg): \`flutter pub add cloudinary_flutter\`\\r\\n\\r\\nChange the function\` void main()\` to: \\r\\n\\r\\n\`\`\`\\r\\nFuture main() async {\\r\\n WidgetsFlutterBinding.ensureInitialized();\\r\\n await Firebase.initializeApp();\\r\\n runApp(const MyApp());\\r\\n}\\r\\n\`\`\`\\r\\n\\r"

Now after we set our Firebase we gonna start build our Application, First we are going to create Three screens `Login Page` `Sign up Page` and `Upload image Page`.

![resize1.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/138de426ea182abb86ae90b76e6517ab4794ba2a.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=458cfd078de5f7548bc81a3d66614346d21636e0cdb3fc25e5d5fd16578a3664) ![resize2.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/c8e3e89811dfc10d61c27bf5be23cfbf1eb8ca99.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=e5a23f1a914164bf3a4282c67e417cb3681c5242639dbb0cab74714cff1f3949) ![WhatsApp_Image_2022-11-26_at_15.51.35_30.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b15f8b2a55c6d8ba52fe0adf343bc5acd40a2ceb.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=4434f2442555a82229628210e1bfce11ed8a3482c2506f17cfa38d02f406e5b6)

**In your lib folder**:

- create new folder named **screens**:
  - inside the **screens** folder create 3 files named:
    - login_screen.dart
    - signup_screen.dart
    - upload_image_screen.dart

![folders.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/09362f244f473704661a68ffa94e15bcd3ecd97d.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=adb2cc64d01cc79b2b29449bc788938e4d83dab9b93a2c28ba4ccac02c1e4d95)

- create new folder named **widgets**:
  - inside the **widgets** folder create 1 file named:
    - text_field.dart

![widget_text.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/c3a2e750023c4588d8e57fe57fb327183a9df5bb.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=68f5442ab243b865526b273294c3365f2478cfbb24ba8903ce13394392f88082)

**Initialization App**

Install these packages:

- [firebase_auth](/rltoken/PCtSeP6u5iTMeYF2GCkuQg) : `flutter pub add firebase_auth`
- [firebase_database](/rltoken/XxBGYPjJR_VnypLH1WKkDw) : `flutter pub add firebase_database`
- [cloudinary_flutter](/rltoken/Kkv6W9cD9E26zqpnJxR7gg): `flutter pub add cloudinary_flutter`

Change the function`void main()` to:

Future main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(const MyApp());
}

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `README.md, lib\main.dart, lib\screens\login_screen.dart, lib\screens\signup_screen.dart, lib\screens\upload_image_screen.dart, lib\widgets\text_field.dart`

### 2.

"In the \`widgets/text_field.dart\` :\\r\\n\\r\\nIn order to learn how a reusable widget works, we will build this TextField widget . \\r\\n\\r\\nCreate a new \`StatelessWidget\` called \`TextFieldInput\` with these attributes:\\r\\n\\r\\n\* \`controller\`: TextEditingController\\r\\n\* \`ispassword\`: bool\\r\\n\* \`hintText\`: String\\r\\n\* \`suffixIcon\`: Widget it cloud be \`null\`\\r\\n\* \`keyboardType\`: TextInputType\\r\\n\\r\\nAfter the \`Widget build\`\\r\\n\\r\\nReturn \`TextField()\`:\\r\\n\\r\\n\* \`keyboardType\` takes \`keyboardType\`\\r\\n\* \`controller\` takes \`controller\`\\r\\n\* \`cursorColor\` takes \`Color.fromARGB(218, 226, 37, 24)\`\\r\\n\* \`decoration\` takes \`InputDecoration\`:\\r\\n\\t\* \`hintText\` takes \`hintText\`\\r\\n\\t\* \`border\` takes \`OutlineInputBorder\`:\\r\\n\\t\\t\* \`borderSide\`: \`BorderSide\`\\r\\n\\t\\t\\t\* color : transparent\\r\\n\\t\\t\\t\* style: none\\r\\n\\t\* \`focusedBorder\`: \`OutlineInputBorder\`\\r\\n\\t\\t\* \`border\` takes \`OutlineInputBorder\`:\\r\\n\\t\\t\\t\* \`borderSide\`: \`BorderSide\`\\r\\n\\t\\t\\t\\t\* \`color\` : \`transparent\`\\r\\n\\t\\t\\t\\t\* \`style\`: \`none\` \\r\\n\\t\* \`enabledBorder\`: \`OutlineInputBorder\`\\r\\n\\t\\t\* \`border\` takes \`OutlineInputBorder\`:\\r\\n\\t\\t\\t\* \`borderSide\`: \`BorderSide\`\\r\\n\\t\\t\\t\\t\* \`color\` : \`transparent\`\\r\\n\\t\\t\\t\\t\* \`style\`: \`none\` \\r\\n\\t\* \`filled\` : \`true\`\\r\\n\\t\* \`contentPadding\` : \`EdgeInsets.all(8)\`\\r\\n\\t\* \`suffixIcon\` takes \`suffixIcon\`\\r\\n\* \`textInputAction\` : \`next\`\\r\\n\* \`obscureText\` takes \`ispassword\`\\r\\n\\r\\n\\r\\nFor Example :\\r\\n\\r\\nIf we put the \`hintText\` : \`Email\` it's giong to be like this:\\r\\n\\r\\n!\[Textfield1.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/9b678015040ae3573a5cec7de257eae6d9992254.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=9a1df631d84c3d48d02770c53052e02ab5406196a2bed08a9abd5725eb06dcbd)\\r\\n\\r\\n\\r\\nAnother Example :\\r\\n\\r\\nIf we put the \`hintText\` : \`Password\` and \`ispassword\`: \`true\` it's giong to be like this:\\r\\n\\r\\n!\[Textfield2.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/48113af9741c78b783e988135934a252c8da6c61.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=8fb91bac7d9bf0f11931f894568c4e2f1c3a7da4fc52bdc6cd3efca1231eb241)\\r\\n\\r"

In the `widgets/text_field.dart` :

In order to learn how a reusable widget works, we will build this TextField widget .

Create a new `StatelessWidget` called `TextFieldInput` with these attributes:

- `controller`: TextEditingController
- `ispassword`: bool
- `hintText`: String
- `suffixIcon`: Widget it cloud be `null`
- `keyboardType`: TextInputType

After the `Widget build`

Return `TextField()`:

- `keyboardType` takes `keyboardType`
- `controller` takes `controller`
- `cursorColor` takes `Color.fromARGB(218, 226, 37, 24)`
- `decoration` takes `InputDecoration`:
  - `hintText` takes `hintText`
  - `border` takes `OutlineInputBorder`:
    - `borderSide`: `BorderSide`
      - color : transparent
      - style: none
  - `focusedBorder`: `OutlineInputBorder`
    - `border` takes `OutlineInputBorder`:
      - `borderSide`: `BorderSide`
        - `color` : `transparent`
        - `style`: `none`
  - `enabledBorder`: `OutlineInputBorder`
    - `border` takes `OutlineInputBorder`:
      - `borderSide`: `BorderSide`
        - `color` : `transparent`
        - `style`: `none`
  - `filled` : `true`
  - `contentPadding` : `EdgeInsets.all(8)`
  - `suffixIcon` takes `suffixIcon`
- `textInputAction` : `next`
- `obscureText` takes `ispassword`

For Example :

If we put the `hintText` : `Email` it's giong to be like this:

![Textfield1.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/9b678015040ae3573a5cec7de257eae6d9992254.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=9a1df631d84c3d48d02770c53052e02ab5406196a2bed08a9abd5725eb06dcbd)

Another Example :

If we put the `hintText` : `Password` and `ispassword`: `true` it's giong to be like this:

![Textfield2.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/48113af9741c78b783e988135934a252c8da6c61.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=8fb91bac7d9bf0f11931f894568c4e2f1c3a7da4fc52bdc6cd3efca1231eb241)

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\widgets\text_field.dart`

### 3.

"Login Page\\r\\n\\r\\n\\r\\n!\[resize1.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/e80a4da25022391cd487de3ca468c0ea499bd2b0.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=34bf5793822e67693833d6f364821cd4e004f8effa0f17c2cc47cbd2fdae2242)\\r\\n\\r\\n\\r\\nYou will need this\[ Logo\](/rltoken/7_1UNJISW2XoioyxNbfB_w) and this \[Font\](/rltoken/tuT3KosLdbfQHRl_vZk0OQ)\\r\\n\\r\\nAfter That Create two folders inside the \`assets\` : \\r\\n\\r\\n\* \`images\`\\r\\n\* \`fonts\`\\r\\n\\r\\nPut the Logo inside the Images folder and Billabong fonts inside the fonts folder\\r\\n\\r\\n\\r\\nInside the \`pubspec.yaml\` \\r\\n\\r\\n\* add this \`- assets/images/\` under the \`assets\`:\\r\\n\\r\\n!\[Screenshot 2022-11-27 170830.png\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/75ae4cad40cc06dc44676aa49cbd43ebf32e654c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=d6ec50143132c420e67fbdfc3fcf6b8c6159258488d1b6666b5efa9223cf3ba7)\\r\\n\\r\\n\* add this under the fonts\\r\\n\\r\\n\`\`\`\\r\\n - family: Billabong\\r\\n fonts:\\r\\n - asset: assets/fonts/Billabong.ttf\\r\\n - asset: assets/fonts/InstagramSans.ttf\\r\\n\`\`\`\\r\\n\\r\\n!\[Screenshot 2022-11-27 170811.png\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/be4ca97fb69abb3065edd3587478bef1d7e8ad43.png?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=ba05a4b0bf4bed9e93b10470daf2543441a88aff5f012ffd81e6b8850723a40f)\\r\\n\\r\\n\*\*Now\*\*\\r\\nInside \`login_screen.dart\` :\\r\\n\\r\\n\* Create a new \`StatefulWidget\` called \`LoginScreen\` that takes these arguments.\\r\\n\\t\* \`emailController\` : \`TextEditingController\`\\r\\n\\t\* \`passwordController\`: \`TextEditingController\`\\r\\n\\t\* \`\_passwordVisible\` : \`bool\` default takes \`true\`\\r\\n\\r\\n\*\*Dispose\*\* only the \`TextEditingController\` arguments\\r\\n\\r\\n\*\*initState\*\* for the \`\_passwordVisible\`, before that, you add \`@override\` annotation\\r\\n\\r\\n\\r\\n\\r\\n\* Returns: \`Scaffold()\` Inside the scaffold add a \`SingleChildScrollView\` in the body\\r\\n\\t\* \`SingleChildScrollView\` takes \`Column\`:\\r\\n\\t\\t\* \`Horizontally of the Column will be : min\`\\r\\n\\t\\t\* \`Verticale of the Column will be : center\`\\r\\n\\t\* Inside of the \`Column\` :\\r\\n\\t\\t\* \`children\[\]\`:\\r\\n\\t\\t\\t\* Set the \`SizedBox\` of \`height\` to \`28\`\\r\\n\\t\\t\\t\* Create a Text widget that contains the name of the app \`Holbegram\` with the \`Billabong\` Font and the font size of \`50\`\\r\\n\\t\\t\\t\* The logo will be inside an Image widget (\`width: 80,height: 60\`)\\r\\n\\t\\t\\t\* Create \`Padding\`\\r\\n\\t\\t\\t\\t\* Set \`EdgeInsets.symmetric\` to \`horizontal\` : \`20\`\\r\\n\\t\\t\\t\\t\* Child takes a \`Column\`\\r\\n\\t\\t\\t\\t\* Inside the \`Children\` of the \`Column\` we are going to call the \`TextFieldInput\` that we created. First let's keep our screen Sized\\r\\n\\r\\n\\t\\t\\t\* \`SizedBox\` takes height: \`28\`\\r\\n\\r\\n\\t\\t\* Email \`TextFieldInput\`\\r\\n\\r\\n\\t\\t\\t\\t\* \`controller\` : \`emailController\`\\r\\n\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\* \`ispassword\` : flase\\r\\n\\r\\n\\t\\t\\t\\t\* \`hintText\` : \`Email\`\\r\\n\\r\\n\\t\\t\\t\\t\* \`keyboardType\` : \`TextInputType.emailAddress\`\\r\\n\\r\\n\\r\\n\\t\* Set the \`SizedBox\` of \`height\` to \`24\`\\r\\n\\t\* Password \`TextField\`\\r\\n\\t\\t\* \`TextFieldInput\`\\r\\n\\t\\t\\t\* \`controller\` : \`passwordController\`\\r\\n\\t\\t\\t\* \`ispassword\` : \`!\_passwordVisible\`\\r\\n\\t\\t\\t\* \`hintText\` : \`Password\`\\r\\n\\t\\t\\t\* \`keyboardType\` : \`TextInputType.visiblePassword\`\\r\\n\\t\\t\\t\* \`suffixIcon\` takes \`IconButton\`\\r\\n\\t\\t\\t\\t\* \`alignment\` : \`bottomLeft\`\\r\\n\\t\\t\\t\\t\* If the \`\_passwordVisible\` is \`ture\` \`icon\` takes \`visibility\` or \`icon\` takes \`visibility_off\`\\r\\n\\t\\t\\t\\t\* use setState inside the \`onPressed: ()\` to change the \`\_passwordVisible\` when pressed\\r\\n\* Set the \`SizedBox\` of \`height\` to \`28\`\\r\\n\* \`SizedBox\`\\r\\n\\t\* \`height\`: \`48\`\\r\\n\\t\* \`width\` : \`double.infinity\`\\r\\n\\t\* \`child\` : \`ElevatedButton\`:\\r\\n\\r\\n\\t\\t\* \`style\`:\\r\\n\\t\\t\\t\* \`ButtonStyle\`\\r\\n\\t\\t\\t\\t\* \`backgroundColor\` :\` WidgetStateProperty.all(Color.fromARGB(218, 226, 37, 24),)\`\\r\\n\\t\\t\* \`onPressed\` leave it empty for the moment\\r\\n\\t\\t\* \`child\` : \`Text\`:\\r\\n\\t\\t\\t\* \`Log in\`\\r\\n\\t\\t\\t\* \`style\`:\\r\\n\\t\\t\\t\\t\* \`TextStyle(color: Colors.white)\`\\r\\nAfter this.\\r\\n\* Set the \`SizedBox\` of \`height\` to \`24\`\\r\\n\* \`Row\`\\r\\n\\t\* \`mainAxisAlignment\`: \`center\`\\r\\n\\t\* \`children\`:\\r\\n\\t\\t\* \`Text\` : \`Forgot your login details?\`\\r\\n\\t\\t\* \`Text\` : \`Get help logging in\` with \`fontWeight\` : \`bold\`\\r\\n\* \`Flexible\`:\\r\\n\\t\* \`flex\`: \`0\`\\r\\n\\t\* \`child\`: \`Container()\`\\r\\n\* Set the \`SizedBox\` of \`height\` to \`24\`\\r\\n\* \`Divider\` : \`thickness\` to \`2\`\\r\\n\* \`Padding\`:\\r\\n\* Set \`vertical\` padding to \`12\`\\r\\n\* \`child\` takes \`Row\`:\\r\\n\\t\* \`mainAxisAlignment\`: \`center\`\\r\\n\\t\* \`children\`:\\r\\n\\t\\t\* \`Text\` : \`Don't have an account\`\\r\\n\\t\\t\* \`TextButton\`:\\r\\n\\t\\t\\t\* \`onPressed\` leave it empty for the moment\\r\\n\\t\\t\\t\* \`child\` takes \`Text\` with a String \`Sign up\` set \`fontWeight\` to \`bold\` and \`color\` to \`fromARGB(218, 226, 37, 24)\`\\r\\n\\t\* Set the \`SizedBox\` of \`height\` to \`10\`\\r\\n\* \`Row\`:\\r\\n\\t\* \`children\`:\\r\\n\\t\\t\* Create two \`Flexible\` widgets with \`child\` takes \`Divider\` : \`thickness\` to \`2\` between the two widget create a \`Text\` with string \`\\" OR \\"\`\\r\\n\* Set the \`SizedBox\` of \`height\` to \`10\`\\r\\n\* \`Row\`:\\r\\n\\t\* \`mainAxisSize\` : \`min\`\\r\\n\\t\* \`mainAxisAlignment\` : \`center\`\\r\\n\\t\* \`children\`:\\r\\n\\t\\t\* Takes an Image network with \`width: 40\` \`height: 40\`\\r\\n\\t\\t\\t\* Image : \[Image Link\](https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png)\\r\\n\\t\\t\* \`Text\` : \`\\"Sign in with Google\\"\`"

Login Page

![resize1.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/e80a4da25022391cd487de3ca468c0ea499bd2b0.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=34bf5793822e67693833d6f364821cd4e004f8effa0f17c2cc47cbd2fdae2242)

You will need this [Logo](/rltoken/7_1UNJISW2XoioyxNbfB_w) and this [Font](/rltoken/tuT3KosLdbfQHRl_vZk0OQ)

After That Create two folders inside the `assets` :

- `images`
- `fonts`

Put the Logo inside the Images folder and Billabong fonts inside the fonts folder

Inside the `pubspec.yaml`

- add this `- assets/images/` under the `assets`:

![Screenshot 2022-11-27 170830.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/75ae4cad40cc06dc44676aa49cbd43ebf32e654c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=d6ec50143132c420e67fbdfc3fcf6b8c6159258488d1b6666b5efa9223cf3ba7)

- add this under the fonts
  - family: Billabong
    fonts:
    - asset: assets/fonts/Billabong.ttf
    - asset: assets/fonts/InstagramSans.ttf

![Screenshot 2022-11-27 170811.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/be4ca97fb69abb3065edd3587478bef1d7e8ad43.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=ba05a4b0bf4bed9e93b10470daf2543441a88aff5f012ffd81e6b8850723a40f)

**Now** Inside `login_screen.dart` :

- Create a new `StatefulWidget` called `LoginScreen` that takes these arguments.
  - `emailController` : `TextEditingController`
  - `passwordController`: `TextEditingController`
  - `_passwordVisible` : `bool` default takes `true`

**Dispose** only the `TextEditingController` arguments

**initState** for the `_passwordVisible`, before that, you add `@override` annotation

- Returns: `Scaffold()` Inside the scaffold add a `SingleChildScrollView` in the body
  - `SingleChildScrollView` takes `Column`:
    - `Horizontally of the Column will be : min`
    - `Verticale of the Column will be : center`

  - Inside of the `Column` :
    - `children[]`:
      - Set the `SizedBox` of `height` to `28`
      - Create a Text widget that contains the name of the app `Holbegram` with the `Billabong` Font and the font size of `50`
      - The logo will be inside an Image widget (`width: 80,height: 60`)
      - Create `Padding`
        - Set `EdgeInsets.symmetric` to `horizontal` : `20`
        - Child takes a `Column`
        - Inside the `Children` of the `Column` we are going to call the `TextFieldInput` that we created. First let's keep our screen Sized

      - `SizedBox` takes height: `28`

    - Email `TextFieldInput`
      - `controller` : `emailController`
      - `ispassword` : flase
      - `hintText` : `Email`
      - `keyboardType` : `TextInputType.emailAddress`

  - Set the `SizedBox` of `height` to `24`
  - Password `TextField`
    - `TextFieldInput`
      - `controller` : `passwordController`
      - `ispassword` : `!_passwordVisible`
      - `hintText` : `Password`
      - `keyboardType` : `TextInputType.visiblePassword`
      - `suffixIcon` takes `IconButton`
        - `alignment` : `bottomLeft`
        - If the `_passwordVisible` is `ture` `icon` takes `visibility` or `icon` takes `visibility_off`
        - use setState inside the `onPressed: ()` to change the `_passwordVisible` when pressed

- Set the `SizedBox` of `height` to `28`
- `SizedBox`
  - `height`: `48`
  - `width` : `double.infinity`
  - `child` : `ElevatedButton`:
    - `style`:
      - `ButtonStyle`
        - `backgroundColor` :`WidgetStateProperty.all(Color.fromARGB(218, 226, 37, 24),)`
    - `onPressed` leave it empty for the moment
    - `child` : `Text`:
      - `Log in`
      - `style`:
        - `TextStyle(color: Colors.white)` After this.

- Set the `SizedBox` of `height` to `24`
- `Row`
  - `mainAxisAlignment`: `center`
  - `children`:
    - `Text` : `Forgot your login details?`
    - `Text` : `Get help logging in` with `fontWeight` : `bold`

- `Flexible`:
  - `flex`: `0`
  - `child`: `Container()`

- Set the `SizedBox` of `height` to `24`
- `Divider` : `thickness` to `2`
- `Padding`:
- Set `vertical` padding to `12`
- `child` takes `Row`:
  - `mainAxisAlignment`: `center`
  - `children`:
    - `Text` : `Don't have an account`
    - `TextButton`:
      - `onPressed` leave it empty for the moment
      - `child` takes `Text` with a String `Sign up` set `fontWeight` to `bold` and `color` to `fromARGB(218, 226, 37, 24)`
  - Set the `SizedBox` of `height` to `10`

- `Row`:
  - `children`:
    - Create two `Flexible` widgets with `child` takes `Divider` : `thickness` to `2` between the two widget create a `Text` with string `" OR "`

- Set the `SizedBox` of `height` to `10`
- `Row`:
  - `mainAxisSize` : `min`
  - `mainAxisAlignment` : `center`
  - `children`:
    - Takes an Image network with `width: 40` `height: 40`
      - Image : [Image Link](https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png)
    - `Text` : `"Sign in with Google"`

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\login_screen.dart`

### 4.

"Signup Page\\r\\n\\r\\n!\[resize2.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/24850d82e5025b87cfe2401b37504c7f9f729ab7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=77757da74bab9294af839f52b0b154216a6b95e8e3aac9759f42664a34f85aa1)\\r\\n\\r\\n\\r\\n\\r\\nInside \`signup_screen.dart\` create :\\r\\n\\r\\n\* Create a new \`StatefulWidget\` called \`SignUp\` takes these arguments.\\r\\n\\t\* \`emailController\` : \`TextEditingController\`\\r\\n\\t\* \`usernameController\` : \`TextEditingController\`\\r\\n\\t\* \`passwordController\`: \`TextEditingController\`\\r\\n\\t\* \`passwordConfirmController\`: \`TextEditingController\`\\r\\n\\t\* \`\_passwordVisible\` : \`bool\` default takes \`true\`\\r\\n\\r\\nLet's \`dispose\` them like we did in the Login Page and don't forget \`initState\` for the \`\_passwordVisible\`\\r\\n\\r\\nNow! we are going to do the \`Sign Up\` page. It is very similar to the previous task therefore, I want you to try this on your own. \\r\\n\\r\\nIf you face any difficulties check the previous task or do as any great developer does: Google it! \\r\\n\\r\\n\\r\\nIn the bottom there is a String \\"Log in\\"\\r\\n\\r\\nIt's a \`TextButton\` that navigates you to the Log in page\\r\\n\\r\\nIf you want to do it alone it's a plus too or jump to the next task.\\r"

Signup Page

![resize2.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/24850d82e5025b87cfe2401b37504c7f9f729ab7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=77757da74bab9294af839f52b0b154216a6b95e8e3aac9759f42664a34f85aa1)

Inside `signup_screen.dart` create :

- Create a new `StatefulWidget` called `SignUp` takes these arguments.
  - `emailController` : `TextEditingController`
  - `usernameController` : `TextEditingController`
  - `passwordController`: `TextEditingController`
  - `passwordConfirmController`: `TextEditingController`
  - `_passwordVisible` : `bool` default takes `true`

Let's `dispose` them like we did in the Login Page and don't forget `initState` for the `_passwordVisible`

Now! we are going to do the `Sign Up` page. It is very similar to the previous task therefore, I want you to try this on your own.

If you face any difficulties check the previous task or do as any great developer does: Google it!

In the bottom there is a String "Log in"

It's a `TextButton` that navigates you to the Log in page

If you want to do it alone it's a plus too or jump to the next task.

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\signup_screen.dart`

### 5.

"Inside \`login_screen.dart\`:\\r\\n\\r\\nIn the \`TextButton\` widget that contains\`Sign Up\` as a \`Text\`\\r\\n\\r\\nwe will change the \`onPressed\` to make it navigate to the Sign Up page:\\r\\n\\r\\n\* Use \`Navigator.push\`:\\r\\n\\t\* Assign \`SignUp()\` and don't forget to import it\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\nInside \`signup_screen.dart\`\\r\\n\\r\\nIn the \`TextButton\` widget that contain\`Log in\` as a \`Text\`\\r\\n\\r\\nwe will change the \`onPressed\` to make it navigate to the Log in page:\\r\\n\\r\\n\* Use \`Navigator.push\`:\\r\\n\\t\* Assign \`LoginScreen()\` and don't forget to import it"

Inside `login_screen.dart`:

In the `TextButton` widget that contains`Sign Up` as a `Text`

we will change the `onPressed` to make it navigate to the Sign Up page:

- Use `Navigator.push`:
  - Assign `SignUp()` and don't forget to import it

Inside `signup_screen.dart`

In the `TextButton` widget that contain`Log in` as a `Text`

we will change the `onPressed` to make it navigate to the Log in page:

- Use `Navigator.push`:
  - Assign `LoginScreen()` and don't forget to import it

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\login_screen.dart, lib\screens\signup_screen.dart`

### 6.

"In the \`lib\` folder:\\r\\n\\r\\n\* Create a new folder called \`models\` that contains two file :\\r\\n\\t\* \`user.dart\`\\r\\n\\t\* \`posts.dart\`\\r\\n\\r\\nIn the \`lib/models/user.dart\` create a class called \`Users\`:\\r\\n\\r\\n\* Properties:\\r\\n\\t\* \`uid\`: String\\r\\n\\t\* \`email\`: String\\r\\n\\t\* \`username\`: String\\r\\n\\t\* \`bio\`: String\\r\\n\\t\* \`photoUrl\`: String\\r\\n\\t\* \`followers\`: List\`\\u003cdynamic\\u003e\`\\r\\n\\t\* \`following\`: List\`\\u003cdynamic\\u003e\`\\r\\n\\t\* \`posts\`: List\`\\u003cdynamic\\u003e\`\\r\\n\\t\* \`saved\`: List\`\\u003cdynamic\\u003e\`\\r\\n\\t\* \`searchKey\` : String\\r\\n\\r\\nCreate a new Method called \`fromSnap\` that accepts \`DocumentSnapshot\` as parameter\\r\\n\\r\\n\* Prototype :\\r\\n\\t\* \`static Userd fromSnap(DocumentSnapshot snap)\`\\r\\n\\r\\nCreate a variable inside the \`fromJson\` called \`snapshot\` that is going to take the data from \`snap\`\\r\\n\\r\\nReturn every value inside it.\\r\\n\\r\\nCreate a method called \`toJson()\` that returns a map representation of the \`Users\`"

In the `lib` folder:

- Create a new folder called `models` that contains two file :
  - `user.dart`
  - `posts.dart`

In the `lib/models/user.dart` create a class called `Users`:

- Properties:
  - `uid`: String
  - `email`: String
  - `username`: String
  - `bio`: String
  - `photoUrl`: String
  - `followers`: List`<dynamic>`
  - `following`: List`<dynamic>`
  - `posts`: List`<dynamic>`
  - `saved`: List`<dynamic>`
  - `searchKey` : String

Create a new Method called `fromSnap` that accepts `DocumentSnapshot` as parameter

- Prototype :
  - `static Userd fromSnap(DocumentSnapshot snap)`

Create a variable inside the `fromJson` called `snapshot` that is going to take the data from `snap`

Return every value inside it.

Create a method called `toJson()` that returns a map representation of the `Users`

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib/models/user.dart, lib/models/posts.dart,`

### 7.

"Create a new folder inside the \`lib\` called \`methods\`:\\r\\n\\r\\nInside \`lib/methods\` create a new file called \` auth_methods.dart\`\\r\\n\\r\\nNow inside \`auth_methods.dart\`:\\r\\n\\r\\nStart by adding the packages needed :\\r\\n\\r\\n\* \`Cloud_firestore\`\\r\\n\* \`Firebase_auth\`\\r\\n\* \`http (for Cloudinary API requests)\`\\r\\n\\r\\n\* Create a new Class called \`AuthMethode\` that's going to contain our Methods.\\r\\n\\r\\nInside the class, create two arguments:\\r\\n\\r\\n\* \`\_auth\` that extends from \`FirebaseAuth\`\\r\\n\* \`\_firestore\` that extends from \`FirebaseFirestore\`\\r\\n\\r\\n\`\_auth\` = \`FirebaseAuth.instance\`\\r\\n\\r\\n\`\_firestore\` = \`FirebaseFirestore.instance\`\\r\\n\\r\\nCreate a new instance for Login called \`login\` that takes two arguments \`email\`: String, \`password\`: String. Return a String\\r\\n\\r\\n\* Prototype :\\r\\n\\t\* \`Future\\u003cString\\u003e login({required String email,required String password,})\`\\r\\n\\t\\t\* Check if the email or the password are empty:\\r\\n\\t\\t\\t\* Return \`Please fill all the fields\`\\r\\n\\t\\t\* Use \`\_auth.signInWithEmailAndPassword\` method from \`FirebaseAuth\`\\r\\n\\t\\t\* Return \`success\`\\r\\n\\t\\t\\t\* On success navigate to the home screen\\r\\n\\r\\nNow go back to the login screen and edit the submit button to call login() while passing the corresponding parameters and use the function’s return value to show a snackbar with the text “Login” on success\\r\\n\\r\\nCreate a new instance for Sign Up called \`signUpUser\` that takes these arguments \`email\`: String , \`password\`: String , \`username\`: String , \`file\`: Uint8List. Return a String\\r\\n\\r\\n\* Prototype :\\r\\n\\t\* \`Future\\u003cString\\u003e signUpUser({required String email,required String password,required String username,Uint8List? file,})\`\\r\\n\\t\\t\* Check if the \`email\` or the \`password\`, \`username\` are empty:\\r\\n\\t\\t\\t\* Return \`Please fill all the fields\`\\r\\n\\t\\t\* Use \`\_auth.createUserWithEmailAndPassword\` method from \`FirebaseAuth\`\\r\\n\\t\\t\* \`userCredential\` takes the return of the \`\_auth.createUserWithEmailAndPassword\`\\r\\n\\r\\n\\r\\n\*\*Now\*\* right! after using \`\_auth.createUserWithEmailAndPassword\` put this:\\r\\n\\r\\n\* \`User\`takes \`userCredential.user\`;\\r\\n\\r\\nThe arguments that we just passed in to Sign Up put it to our \`Users\` Class\\r\\n\\r\\nAfter that: \\r\\n\\r\\n\* \`await \_firestore.collection(\\"users\\").doc(user.uid).set(users.toJson());\`\\r\\n\* Return \`success\`\\r\\n"

Create a new folder inside the `lib` called `methods`:

Inside `lib/methods` create a new file called `auth_methods.dart`

Now inside `auth_methods.dart`:

Start by adding the packages needed :

- `Cloud_firestore`
- `Firebase_auth`
- `http (for Cloudinary API requests)`
- Create a new Class called `AuthMethode` that's going to contain our Methods.

Inside the class, create two arguments:

- `_auth` that extends from `FirebaseAuth`
- `_firestore` that extends from `FirebaseFirestore`

`_auth` = `FirebaseAuth.instance`

`_firestore` = `FirebaseFirestore.instance`

Create a new instance for Login called `login` that takes two arguments `email`: String, `password`: String. Return a String

- Prototype :
  - `Future<String> login({required String email,required String password,})`
    - Check if the email or the password are empty:
      - Return `Please fill all the fields`
    - Use `_auth.signInWithEmailAndPassword` method from `FirebaseAuth`
    - Return `success`
      - On success navigate to the home screen

Now go back to the login screen and edit the submit button to call login() while passing the corresponding parameters and use the function’s return value to show a snackbar with the text “Login” on success

Create a new instance for Sign Up called `signUpUser` that takes these arguments `email`: String , `password`: String , `username`: String , `file`: Uint8List. Return a String

- Prototype :
  - `Future<String> signUpUser({required String email,required String password,required String username,Uint8List? file,})`
    - Check if the `email` or the `password`, `username` are empty:
      - Return `Please fill all the fields`
    - Use `_auth.createUserWithEmailAndPassword` method from `FirebaseAuth`
    - `userCredential` takes the return of the `_auth.createUserWithEmailAndPassword`

**Now** right! after using `_auth.createUserWithEmailAndPassword` put this:

- `User`takes `userCredential.user`;

The arguments that we just passed in to Sign Up put it to our `Users` Class

After that:

- `await _firestore.collection("users").doc(user.uid).set(users.toJson());`
- Return `success`

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib/methods/auth_methods.dart`

### 8.

"Let's put our file in the \`screens\` inside a new folder called \`auth\` :\\r\\n\\r\\nCreate a new folder inside \`screens/auth\` called \`methods\`:\\r\\n\\r\\n!\[aaaaaaaaaaaaaaaaaaaaaaa.png\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/197d8d071c1bf504f62185889aaeb1e7268a43c7.png?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=cc5be716184d5ae6387c554f1ee73936639f83c104096c7831aefcc71851b47e)\\r\\n\\r\\nInside \`methods\` folder create a new file called \`user_storage.dart\`:\\r\\n\\r\\nCopy and paste the Code into your file\\r\\n\\r\\n\`\`\`\\r\\nimport 'dart:typed_data';\\r\\nimport 'package:uuid/uuid.dart';\\r\\nimport 'package:http/http.dart' as http;\\r\\nimport 'dart:convert';\\r\\n\\r\\nclass StorageMethods {\\r\\n final String cloudinaryUrl = \\"https://api.cloudinary.com/v1\_1/your-cloud-name/image/upload\\";\\r\\n final String cloudinaryPreset = \\"your-upload-preset\\";\\r\\n\\r\\n Future\\u003cString\\u003e uploadImageToStorage(\\r\\n bool isPost,\\r\\n String childName,\\r\\n Uint8List file,\\r\\n ) async {\\r\\n String uniqueId = const Uuid().v1();\\r\\n var uri = Uri.parse(cloudinaryUrl);\\r\\n var request = http.MultipartRequest('POST', uri);\\r\\n request.fields\['upload_preset'\] = cloudinaryPreset;\\r\\n request.fields\['folder'\] = childName;\\r\\n request.fields\['public_id'\] = isPost ? uniqueId : '';\\r\\n\\r\\n var multipartFile = http.MultipartFile.fromBytes('file', file, filename: '$uniqueId.jpg');\\r\\n request.files.add(multipartFile);\\r\\n\\r\\n var response = await request.send();\\r\\n if (response.statusCode == 200) {\\r\\n var responseData = await response.stream.toBytes();\\r\\n var jsonResponse = jsonDecode(String.fromCharCodes(responseData));\\r\\n return jsonResponse\['secure_url'\];\\r\\n } else {\\r\\n throw Exception('Failed to upload image to Cloudinary');\\r\\n }\\r\\n }\\r\\n}\\r\\n\\r\\n\`\`\`\\r\\n\\r\\n\\r\\nInside the \`upload_image_screen.dart\`:\\r\\n\\r\\nCreate a \`StatefulWidget\` Called \`AddPicture\` that accepts three arguments :\\r\\n\\r\\n\* \`final String email\`\\r\\n\* \`final String password\`\\r\\n\* \`final String username\`\\r\\n\\r\\nAnd contains a variable called \`\_image\`\\r\\n\\r\\n\* \`Uint8List? \_image\`\\r\\n\\r\\nCreate two methods:\\r\\n\\r\\nThe first one is Called \`selectImageFromGallery()\`:\\r\\n\\r\\n\* Prototype\\r\\n\\t\* \`void selectImageFromGallery()\`\\r\\n\\t\* Return the value to variable \` \_image\`\\r\\n\* Use \`imagepicker\`\\r\\n\\r\\n\\r\\nthe second one is Called \`selectImageFromCamera()\`:\\r\\n\\r\\n\* Prototype\\r\\n\\t\* \`void selectImageFromCamera()\`\\r\\n\\t\* Return the value to variable \` \_image\`\\r\\n\* Use \`imagepicker\`\\r\\n\\r\\n\*\*Now\*\*\\r\\n\\r\\nLet's Create this UI:\\r\\n\\r\\nThe \[Link To the Icon\](https://upload.wikimedia.org/wikipedia/commons/9/99/Sample\_User\_Icon.png)\\r\\n\\r\\n!\[WhatsApp\_Image\_2022-11-26\_at\_15.51.35\_30.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/6e67866cb45b4f9a5566e8bdd96434c994e93f85.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=4a8c10c782ec85ae72b5de8beb006bef4dd8a3ac29b7a3c428299520172e18bf)\\r\\n\\r\\nMake the camera icon and the gallery icon linking with these functions\\r\\n\\r\\nReplace the user icon with your image:\\r\\n\\r\\n!\[next.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/b20daf8cf9cce7daef82cec6fb3e4170d6e81250.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=44d5d202c36c8d0ce0e4f5a39c7a4ce222d897cf9c666723ffd68a5497949b2e)\\r"

Let's put our file in the `screens` inside a new folder called `auth` :

Create a new folder inside `screens/auth` called `methods`:

![aaaaaaaaaaaaaaaaaaaaaaa.png](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/197d8d071c1bf504f62185889aaeb1e7268a43c7.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=cc5be716184d5ae6387c554f1ee73936639f83c104096c7831aefcc71851b47e)

Inside `methods` folder create a new file called `user_storage.dart`:

Copy and paste the Code into your file

import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StorageMethods {
final String cloudinaryUrl = "https://api.cloudinary.com/v1_1/your-cloud-name/image/upload";
final String cloudinaryPreset = "your-upload-preset";

Future<String> uploadImageToStorage(
bool isPost,
String childName,
Uint8List file,
) async {
String uniqueId = const Uuid().v1();
var uri = Uri.parse(cloudinaryUrl);
var request = http.MultipartRequest('POST', uri);
request.fields['upload_preset'] = cloudinaryPreset;
request.fields['folder'] = childName;
request.fields['public_id'] = isPost ? uniqueId : '';

    var multipartFile = http.MultipartFile.fromBytes('file', file, filename: '$uniqueId.jpg');
    request.files.add(multipartFile);

    var response = await request.send();
    if (response.statusCode == 200) {
      var responseData = await response.stream.toBytes();
      var jsonResponse = jsonDecode(String.fromCharCodes(responseData));
      return jsonResponse['secure_url'];
    } else {
      throw Exception('Failed to upload image to Cloudinary');
    }

}
}

Inside the `upload_image_screen.dart`:

Create a `StatefulWidget` Called `AddPicture` that accepts three arguments :

- `final String email`
- `final String password`
- `final String username`

And contains a variable called `_image`

- `Uint8List? _image`

Create two methods:

The first one is Called `selectImageFromGallery()`:

- Prototype
  - `void selectImageFromGallery()`
  - Return the value to variable `_image`
- Use `imagepicker`

the second one is Called `selectImageFromCamera()`:

- Prototype
  - `void selectImageFromCamera()`
  - Return the value to variable `_image`
- Use `imagepicker`

**Now**

Let's Create this UI:

The [Link To the Icon](https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png)

![WhatsApp_Image_2022-11-26_at_15.51.35_30.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/6e67866cb45b4f9a5566e8bdd96434c994e93f85.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=4a8c10c782ec85ae72b5de8beb006bef4dd8a3ac29b7a3c428299520172e18bf)

Make the camera icon and the gallery icon linking with these functions

Replace the user icon with your image:

![next.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/b20daf8cf9cce7daef82cec6fb3e4170d6e81250.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=44d5d202c36c8d0ce0e4f5a39c7a4ce222d897cf9c666723ffd68a5497949b2e)

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\auth\methods\user_storage.dart, lib\screens\upload_image_screen.dart`

### 9.

"We are going to pass the sign up data to our upload picture page:\\r\\n\\r\\nInside \`signup_screen.dart\` \\r\\n\\r\\nIn the \`onPressed\` where the Text contain \`Sign up\`\\r\\n\\r\\nuse the \`Navigator\` to move to the \`AddPicture\` page and passing :\\r\\n\\r\\n\* \`email\`\\r\\n\* \`username\`\\r\\n\* \`password\`\\r\\n\\r\\nInside \`upload_image_screen.dart\`:\\r\\n\\r\\n\*\*Use widget when you want to call the data example\*\*:\\r\\n\\r\\n\`widget.email\` or assign it to a variable \`var email = widget.email\`\\r\\n\\r\\nReplace \`John Doe\` with the \`username\`\\r\\n\\r\\nOn the Next button call the method \`signUpUser\` that we created in the \`auth_methods.dart\`\\r\\n\\r\\nPassing the correct data to the \`signUpUser\` \\r\\n\\r\\n\* \`email\` takes \`email\`\\r\\n\* \`username\` takes \`username\`\\r\\n\* \`password\` takes \`password\`\\r\\n\* \`file\` takes \`\_image\`\\r\\n\* on \`success\` show a \`snackbar\` with a \`success\` on it"

We are going to pass the sign up data to our upload picture page:

Inside `signup_screen.dart`

In the `onPressed` where the Text contain `Sign up`

use the `Navigator` to move to the `AddPicture` page and passing :

- `email`
- `username`
- `password`

Inside `upload_image_screen.dart`:

**Use widget when you want to call the data example**:

`widget.email` or assign it to a variable `var email = widget.email`

Replace `John Doe` with the `username`

On the Next button call the method `signUpUser` that we created in the `auth_methods.dart`

Passing the correct data to the `signUpUser`

- `email` takes `email`
- `username` takes `username`
- `password` takes `password`
- `file` takes `_image`
- on `success` show a `snackbar` with a `success` on it

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\signup_screen.dart, lib\screens\upload_image_screen.dart`

### 10.

"Create a new method called \`getUserDetails\` inside \`auth_methods.dart\` that gets the current user details and return \`Userd.fromSnap\` within the details\\r\\n \\r\\n\\r\\nInside the \`lib/\` create a new folder called \`providers\` that contain \`user_provider.dart\` file:\\r\\n\\r\\nInside \`user_provider.dart\` Create a class called \`UserProvider\` mixin with the \`ChangeNotifier\`\\r\\n\\r\\nCreate privet variables:\\r\\n\\r\\n\* \`\_user\` takes \`Userd\`\\r\\n\* \`\_authMethode\` takes \`AuthMethode()\`\\r\\n\\r\\nCreate a getter for \`\_user\` \\r\\n\\r\\nCreate a method called \`refreshUser\` prototype:\\r\\n\\r\\n\* Future refreshUser():\\r\\n\\t\* \`user\` takes \`getUserDetails\` method from \`AuthMethode()\`\\r\\n\\t\* \`\_userd\` takes \`user\`\\r\\n\\t\* at the end add \`notifyListeners()\`\\r\\n\\r\\n"

Create a new method called `getUserDetails` inside `auth_methods.dart` that gets the current user details and return `Userd.fromSnap` within the details

Inside the `lib/` create a new folder called `providers` that contain `user_provider.dart` file:

Inside `user_provider.dart` Create a class called `UserProvider` mixin with the `ChangeNotifier`

Create privet variables:

- `_user` takes `Userd`
- `_authMethode` takes `AuthMethode()`

Create a getter for `_user`

Create a method called `refreshUser` prototype:

- Future refreshUser():
  - `user` takes `getUserDetails` method from `AuthMethode()`
  - `_userd` takes `user`
  - at the end add `notifyListeners()`

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\methods\auth_methods.dart, lib\providers`

### 11.

"We are going to create the Home page now :\\r\\n\\r\\n!\[homehhh.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/88520f0e2186e12e41d93b10cb312de6acc83bee.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=485a242e0115f09c6dfa101927fc233c6bb4dda7598cdfef98e49a3540191f5b)\\r\\n\\r\\n\*\*First\*\* we are going to create all pages:\\r\\n\\r\\n\* Create a new folder inside the screens folder called \`pages\`:\\r\\n\\r\\n\\t\* \`Feed()\` : \`feed.dart\`\\r\\n\\t\* \`Search()\` : \`search.dart\`\\r\\n\\t\* \`AddImage()\`: \`add_image.dart\`\\r\\n\\t\* \`Favorite()\` : \` favorite.dart\`\\r\\n\\t\* \`Profile()\` : \`profile_screen.dart\`\\r\\n\\r\\nTo start with the bottom navigation bar \\r\\n\\r\\nInstall this package:\\r\\n\\r\\n\* \[BottomNavyBar\](/rltoken/nQ4YnR5B2dJLE_3MMrbhCQ)\\r\\n\\r\\nInside the \`widgets\` folder:\\r\\n\\r\\n\* Create a new file called \`bottom_nav.dart\`\\r\\n\\t\* Create a \`StatefulWidget\` called \`BottomNav\`\\r\\n\\t\* \`\_currentIndex\` : \`0\`\\r\\n\\t\* \`\_pageController\` assign to \`PageController\`\\r\\n\\t\* \`initState()\`:\\r\\n\\t\\t\* \`\_pageController\` : PageController()\\r\\n\\t\* \`dispose()\`\\r\\n\\t\* Return \`Scaffold\`body \`PageView\` \\r\\n\\t\\t\* \`controller\` : \`\_pageController\`\\r\\n\\t\* \`children\` takes all the pages:\\r\\n\\t\\t\* \`Feed()\`\\r\\n\\t\\t\* \`Search()\`\\r\\n\\t\\t\* \`AddImage()\`\\r\\n\\t\\t\* \` Favorite()\`\\r\\n\\t\\t\* \`Profile()\`\\r\\n\\t\* \`bottomNavigationBar\` : \`BottomNavyBar\`\\r\\n\\t\\t\* \`selectedIndex\` : \`\_currentIndex\`\\r\\n\\t\\t\* \`showElevation\` : \`true\`\\r\\n\\t\\t\* \`itemCornerRadius\` : \`8\`\\r\\n\\t\\t\* \`curve\` : \`Curves.easeInBack\`\\r\\n\\t\\t\* \`onItemSelected\`: \`onPageChanged\` takes an arguments called index \\r\\n\\t\\t\\t\* in \`setState\` \`\_currentIndex\` takes \`index\`\\r\\n\\t\* \`items\` it's a list of \`BottomNavyBarItem\` we are going to create Five of them and every each one has a different \`Icon\` , \`Text\`:\\r\\n\\t\\t\* Inside \`BottomNavyBarItem\`:\\r\\n\\t\\t\* \`icon\`: \`Icons\`\\r\\n\\t\\t\* \`title\` : \`Text\`\\r\\n\\t\\t\\t\* \`TextStyle\`:\\r\\n\\t\\t\\t\\t\* \`fontSize\` : \`25\`\\r\\n\\t\\t\\t\\t\* \`fontFamily\`: \`Billabong\`\\r\\n\\t\\t\\t\* \`activeColor\` : \`red\`\\r\\n\\t\\t\\t\* \`textAlign\`: \`center\`\\r\\n\\t\\t\\t\* \`inactiveColor\`: \`black\`\\r\\n\\r\\n\\r\\n\*\*Now\*\*\\r\\n\\r\\nInside \`home.dart\`\\r\\n\\r\\nCreate \`StatefulWidget\` called \`Home\` that returns \`BottomNav()\`\\r\\n\\r\\n\\r\\n\\r\\n\\r\\nInside \`feed.dart\`\\r\\n\\r\\nCreate \`StatelessWidget\` called \`Feed\` that returns \`Scaffold()\`:\\r\\n\\r\\n\* With an \`AppBar\` contains \`Holbegram\` with \`Billabong\` font and the logo like in the Picture and a \`Row\` with two Icons\\r\\n\* Body return widget called \`Posts()\` that we are going to create later\\r\\n\\r\\nIn the \`models/post.dart\`\\r\\n\\r\\n\* Create a class called \`Post\`\\r\\n\\t\* \`caption\` : \`String\`\\r\\n\\t\* \`uid\`: \`String\`\\r\\n\\t\* \`username\` : \`String\`\\r\\n\\t\* \`likes\` : \`List\`\\r\\n\\t\* \`postId\` : \`String\`\\r\\n\\t\* \`datePublished\` : \`DateTime\`\\r\\n\\t\* \`postUrl\` : \`String\`\\r\\n\\t\* \`profImage\` : \`String\`\\r\\n\\r\\nCreate the instance \`fromSnap\` like we did in the Users Class\\r\\n\\r\\nDon't forget the \`toJson\` method\\r\\n\\r\\n\\r\\nInside \`utils/posts.dart\`:\\r\\n\\r\\nCreate a \`StatefulWidget\` Called \`Posts\` using the \`getUser\` \\r\\n\\r\\n\*\*Use the provider and make necessary changes if required\*\*\\r\\n\\r\\n\* Return \`StreamBuilder\` :\\r\\n\\t\* \`stream\` : \`FirebaseFirestore.instance.collection('posts').snapshots()\`\\r\\n\\t\* if \`snapshot.hasError\` return \`Error {snapshot.error}\`\\r\\n\\t\* if \`snapshot.hasData\` return \`ListView.builder\`\\r\\n\\t\* \`data\` = \`snapshot.data.docs\`\\r\\n\\t\\t\* Return \`SingleChildScrollView\`\\r\\n\\t\\t\* \`Child\` : \`Container\`:\\r\\n\\t\\t\* \`margin\`: \`EdgeInsetsGeometry.lerp(const EdgeInsets.all(8), const EdgeInsets.all(8), 10)\`\\r\\n\\t\\t\* \`height\` : \`540\`\\r\\n\\t\\t\* \`decoration\`: \`color fromARGB(255, 255, 255, 255), borderRadius circular(25)\`\\r\\n\\t\\t\* \`child\` : \`Column\` \\u003e \`children\` \\u003e \`Container\` \\u003e \`child\` \\u003e \`row\` \\u003e \`children\` \\r\\n\\t\\t\\t\* \`padding EdgeInsets.all(8.0)\` \\u003e \`child\` \\u003e \`Container width: 40, height: 40,\` \\u003e \`decoration BoxDecoration(shape: BoxShape.circle)\` \\u003e \`image\` \\u003e \`data\['profImage'\] fit : cover \`\\r\\n\\t\\t\\t\* \`Text\` : \`username\`\\r\\n\\t\\t\\t\* \`Spacer\`\\r\\n\\t\\t\\t\* \`IconButton\`:\\r\\n\\t\\t\\t\\t\* \`Icon\` : \`more_horiz\`\\r\\n\\t\\t\\t\\t\* \`onPressed\` : Show snack with \`Text\` \\"Post Deleted\\"\\r\\n\\t\\t\\t\* \`SizedBox\` :\\r\\n\\t\\t\\t\\t\* \`child\` : \`Text\` that contain the \`caption\`\\r\\n\\t\\t\\t\* \`SizedBox\` :\\r\\n\\t\\t\\t\\t\* \`height\` : \`10\`\\r\\n\\t\\t\\t\* \`Container\` : \\r\\n\\t\\t\\t\\t\* \`width\` : \`350\`\\r\\n\\t\\t\\t\\t\* \`height\` : \`350\`\\r\\n\\t\\t\\t\\t\* \`decoration\` : \`BorderRadius.circular\` \`25\`\\r\\n\\t\\t\\t\\t\* \`image\` : \`postUrl\`\\r\\n\\t\\t\\t\\t\* \`fit\` : \`cover\`\\r\\n\\r\\nAdd the missing \`Icons\` that appears in the \`Picture\`\\r\\n\\r\\nReturn \`CircularProgressIndicator()\` if the data still fetching \\r\\n\\r\\n\\r\\n\\r\\n\\r"

We are going to create the Home page now :

![homehhh.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/88520f0e2186e12e41d93b10cb312de6acc83bee.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=485a242e0115f09c6dfa101927fc233c6bb4dda7598cdfef98e49a3540191f5b)

**First** we are going to create all pages:

- Create a new folder inside the screens folder called `pages`:
  - `Feed()` : `feed.dart`
  - `Search()` : `search.dart`
  - `AddImage()`: `add_image.dart`
  - `Favorite()` : `favorite.dart`
  - `Profile()` : `profile_screen.dart`

To start with the bottom navigation bar

Install this package:

- [BottomNavyBar](/rltoken/nQ4YnR5B2dJLE_3MMrbhCQ)

Inside the `widgets` folder:

- Create a new file called `bottom_nav.dart`
  - Create a `StatefulWidget` called `BottomNav`
  - `_currentIndex` : `0`
  - `_pageController` assign to `PageController`
  - `initState()`:
    - `_pageController` : PageController()
  - `dispose()`
  - Return `Scaffold`body `PageView`
    - `controller` : `_pageController`
  - `children` takes all the pages:
    - `Feed()`
    - `Search()`
    - `AddImage()`
    - `Favorite()`
    - `Profile()`
  - `bottomNavigationBar` : `BottomNavyBar`
    - `selectedIndex` : `_currentIndex`
    - `showElevation` : `true`
    - `itemCornerRadius` : `8`
    - `curve` : `Curves.easeInBack`
    - `onItemSelected`: `onPageChanged` takes an arguments called index
      - in `setState` `_currentIndex` takes `index`
  - `items` it's a list of `BottomNavyBarItem` we are going to create Five of them and every each one has a different `Icon` , `Text`:
    - Inside `BottomNavyBarItem`:
    - `icon`: `Icons`
    - `title` : `Text`
      - `TextStyle`:
        - `fontSize` : `25`
        - `fontFamily`: `Billabong`
      - `activeColor` : `red`
      - `textAlign`: `center`
      - `inactiveColor`: `black`

**Now**

Inside `home.dart`

Create `StatefulWidget` called `Home` that returns `BottomNav()`

Inside `feed.dart`

Create `StatelessWidget` called `Feed` that returns `Scaffold()`:

- With an `AppBar` contains `Holbegram` with `Billabong` font and the logo like in the Picture and a `Row` with two Icons
- Body return widget called `Posts()` that we are going to create later

In the `models/post.dart`

- Create a class called `Post`
  - `caption` : `String`
  - `uid`: `String`
  - `username` : `String`
  - `likes` : `List`
  - `postId` : `String`
  - `datePublished` : `DateTime`
  - `postUrl` : `String`
  - `profImage` : `String`

Create the instance `fromSnap` like we did in the Users Class

Don't forget the `toJson` method

Inside `utils/posts.dart`:

Create a `StatefulWidget` Called `Posts` using the `getUser`

**Use the provider and make necessary changes if required**

- Return `StreamBuilder` :
  - `stream` : `FirebaseFirestore.instance.collection('posts').snapshots()`
  - if `snapshot.hasError` return `Error {snapshot.error}`
  - if `snapshot.hasData` return `ListView.builder`
  - `data` = `snapshot.data.docs`
    - Return `SingleChildScrollView`
    - `Child` : `Container`:
    - `margin`: `EdgeInsetsGeometry.lerp(const EdgeInsets.all(8), const EdgeInsets.all(8), 10)`
    - `height` : `540`
    - `decoration`: `color fromARGB(255, 255, 255, 255), borderRadius circular(25)`
    - `child` : `Column` > `children` > `Container` > `child` > `row` > `children`
      - `padding EdgeInsets.all(8.0)` > `child` > `Container width: 40, height: 40,` > `decoration BoxDecoration(shape: BoxShape.circle)` > `image` > `data['profImage'] fit : cover`
      - `Text` : `username`
      - `Spacer`
      - `IconButton`:
        - `Icon` : `more_horiz`
        - `onPressed` : Show snack with `Text` "Post Deleted"
      - `SizedBox` :
        - `child` : `Text` that contain the `caption`
      - `SizedBox` :
        - `height` : `10`
      - `Container` :
        - `width` : `350`
        - `height` : `350`
        - `decoration` : `BorderRadius.circular` `25`
        - `image` : `postUrl`
        - `fit` : `cover`

Add the missing `Icons` that appears in the `Picture`

Return `CircularProgressIndicator()` if the data still fetching

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\home.dart, lib\screens\pages\feed.dart, lib\screens\pages\search.dart, lib\screens\pages\add_image.dart, lib\screens\pages\favorate.dart, lib\screens\pages\profile_screen.dart, models/post.dart, utils/posts.dart`

### 12.

"Inside the \`pages\` folder create a new folder called \`methods\`:\\r\\n\\r\\nInside the \`methods\` create a new file called \`post_storage.dart\`:\\r\\n\\r\\n\* Create a class called \`PostStorage\`:\\r\\n\\t\* \`\_firestore\` takes : \`FirebaseFirestore.instance\`\\r\\n\\r\\n \*\*Methods\*\*\\r\\n \\r\\nCreate a method Called \`uploadPost\` takes \`caption\`, \`uid\`, \`username\`, \`profImage\` as a \`String\` and \`image\` as \`Uint8List\`\\r\\n\\r\\n\* Method prototype : \`Future\\u003cString\\u003e uploadPost(String caption,String uid,String username,String profImage,Uint8List image)\`\\r\\n\\r\\nshould use \`uploadImageToCloudinary\` from \`lib\\\\screens\\\\auth\\\\methods\\\\user_storege.dart\`\\r\\n\\r\\nReturn \\"\`Ok\`\\" On success else Return the error\\r\\n\\r\\n\\r\\nCreate another method called \`deletePost\` that accept \`postId\` and \`publicId\` as an arguments to delete the post\\r\\n\\r\\n\* Method prototype : \`Future\\u003cvoid\\u003e deletePost(String postId, string publicId)\`\\r\\n\\r\\n\\r\\nInside \`utils/posts.dart\`:\\r\\n\\r\\n\* In the \`onPressed()\` Before the \`snackbar\` that shows \\"Post Deleted\\" Call the the \`deletePost\` it should delete your post when you pressed on the icon"

Inside the `pages` folder create a new folder called `methods`:

Inside the `methods` create a new file called `post_storage.dart`:

- Create a class called `PostStorage`:
  - `_firestore` takes : `FirebaseFirestore.instance`

  **Methods**

Create a method Called `uploadPost` takes `caption`, `uid`, `username`, `profImage` as a `String` and `image` as `Uint8List`

- Method prototype : `Future<String> uploadPost(String caption,String uid,String username,String profImage,Uint8List image)`

should use `uploadImageToCloudinary` from `lib\screens\auth\methods\user_storege.dart`

Return "`Ok`" On success else Return the error

Create another method called `deletePost` that accept `postId` and `publicId` as an arguments to delete the post

- Method prototype : `Future<void> deletePost(String postId, string publicId)`

Inside `utils/posts.dart`:

- In the `onPressed()` Before the `snackbar` that shows "Post Deleted" Call the the `deletePost` it should delete your post when you pressed on the icon

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`

### 13.

"Inside \`add_image.dart\` we are going to create this UI:\\r\\n\\r\\n\\r\\n!\[post.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/ba9288292c9e3260060f022c7a40f0ef94f6ca7d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=462a73f42c89b1d8fb97603dfe9595e857ab2bc1d564d1d6b4f69f4e94757b5f)\\r\\n\\r\\n\[Link to the Icon \](https://cdn.pixabay.com/photo/2017/11/10/05/24/add-2935429\_960\_720.png)\\r\\n\\r\\n\*\*Make necessary changes if required\*\*\\r\\n\\r\\nLike we did in the \`AddPicture\` \\r\\n\\r\\n\* Use \`image_picker\`\\r\\n\\t\* Using the two option to add an image \[\`gallery\`, \`camera\`\]\\r\\n\\r\\nCall \`uploadPost\` when you press on \`Post\` and make sure to redirect to the \`Home page\`\\r\\n\\r"

Inside `add_image.dart` we are going to create this UI:

![post.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/ba9288292c9e3260060f022c7a40f0ef94f6ca7d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=462a73f42c89b1d8fb97603dfe9595e857ab2bc1d564d1d6b4f69f4e94757b5f)

[Link to the Icon](https://cdn.pixabay.com/photo/2017/11/10/05/24/add-2935429_960_720.png)

**Make necessary changes if required**

Like we did in the `AddPicture`

- Use `image_picker`
  - Using the two option to add an image \[`gallery`, `camera`\]

Call `uploadPost` when you press on `Post` and make sure to redirect to the `Home page`

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\pages\add_image.dart`

### 14.

"Inside \`search.dart\` we are going to create this UI:\\r\\n\\r\\n!\[aaaa_37.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/a22f19f7732ea369bbe4777e0a912e8948b214b4.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=598a2c0f252b17312b304fce0f06c2359cbdda9b09b678c9dd2da737c54077d9)\\r\\n\\r\\n\\r\\n\*\*Make necessary changes if required\*\*\\r\\n\\r\\n\* Display all images uploaded to \`Cloudinary\`.\\r\\n\* Use \`StaggeredGridView\`"

Inside `search.dart` we are going to create this UI:

![aaaa_37.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/a22f19f7732ea369bbe4777e0a912e8948b214b4.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=598a2c0f252b17312b304fce0f06c2359cbdda9b09b678c9dd2da737c54077d9)

**Make necessary changes if required**

- Display all images uploaded to `Cloudinary`.
- Use `StaggeredGridView`

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\pages\search.dart`

### 15.

"Inside \`favorite.dart\` we are going to create this UI:\\r\\n\\r\\n!\[favo.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/e8c14474c9b6315cb5aeff9616b7f5fe9b0054e2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=a3d5f91f9420dc58b2748effb988dec4156ca571df5281c25962de75c15df775)\\r\\n\\r\\n\*\*Make necessary changes if required\*\*\\r\\n\\r\\nwhen clicking on the \`Icons.bookmark\` in the Feed the image get saved and it appears in the Favorite page"

Inside `favorite.dart` we are going to create this UI:

![favo.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/e8c14474c9b6315cb5aeff9616b7f5fe9b0054e2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=a3d5f91f9420dc58b2748effb988dec4156ca571df5281c25962de75c15df775)

**Make necessary changes if required**

when clicking on the `Icons.bookmark` in the Feed the image get saved and it appears in the Favorite page

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\pages\favorite.dart`

### 16.

"Inside \`profile.dart\` we are going to create this UI:\\r\\n\\r\\n!\[Screenshot_20221212-230446_35.jpg\](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/cb96776b56e542882e5d58b85d19be6869754c5e.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256\\u0026X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4\_request\\u0026X-Amz-Date=20260420T075453Z\\u0026X-Amz-Expires=345600\\u0026X-Amz-SignedHeaders=host\\u0026X-Amz-Signature=f16fccae56bec8f7af0c8f1888a44bb247948293f65d1cec538e5d934377e770)\\r\\n\\r\\nThe icon at the top is for Logout.\\r\\n\\r\\n\*\*Make necessary changes if required\*\*\\r\\n\\r\\nRetrieve and display the necessary data, including images stored on Cloudinary.\\r\\n\\r\\nAnd \*\*congratulations\*\* you made it"

Inside `profile.dart` we are going to create this UI:

![Screenshot_20221212-230446_35.jpg](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/cb96776b56e542882e5d58b85d19be6869754c5e.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20260420%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20260420T075453Z&X-Amz-Expires=345600&X-Amz-SignedHeaders=host&X-Amz-Signature=f16fccae56bec8f7af0c8f1888a44bb247948293f65d1cec538e5d934377e770)

The icon at the top is for Logout.

**Make necessary changes if required**

Retrieve and display the necessary data, including images stored on Cloudinary.

And **congratulations** you made it

**Repo:**

- GitHub repository: `holbertonschool-holbegram`
- **Directory:** `holbegram`
- **File:** `lib\screens\pages\profile_screen.dart`
