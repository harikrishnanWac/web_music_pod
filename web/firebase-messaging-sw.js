importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");

   /*Update with yours config*/
const firebaseConfig = {
  apiKey: 'AIzaSyDbaK2z0cASj6Z4WXgEIxSp44m1r8k1d48',
  appId: '1:456499902478:web:6343ff58e8a06cc220e45f',
  messagingSenderId: '456499902478',
  projectId: 'webpushriverpod',
  authDomain: 'webpushriverpod.firebaseapp.com',
  storageBucket: 'webpushriverpod.appspot.com',
  };
  firebase.initializeApp(firebaseConfig);
  const messaging = firebase.messaging();

 self.addEventListener('install', (event) => {
   console.log('Service Worker installed');
 });

 self.addEventListener('activate', (event) => {
   console.log('Service Worker activated');
 });

 messaging.onBackgroundMessage(function(payload) {
   console.log('[firebase-messaging-sw.js] Received background message ', payload);
   // Customize notification here
   const notificationTitle = 'Background Message Title';
   const notificationOptions = {
     body: 'Background Message body.',
     icon: '/firebase-logo.png'
   };

   self.registration.showNotification(notificationTitle, notificationOptions);
 });