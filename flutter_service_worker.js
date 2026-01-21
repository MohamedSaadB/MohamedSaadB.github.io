'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"apple-touch-icon.png": "87f4e72bfea7c32e01826f1cf7502d8c",
"assets/AssetManifest.bin": "b0bcfb7418418002aba7c06a5656da43",
"assets/AssetManifest.bin.json": "6cbc88e675ce331c4bf568e88e9c9935",
"assets/AssetManifest.json": "4452843ba93ea52952b0cf63109960f9",
"assets/assets/content/checkout.json": "281158b6474576d708c9f90b4142904f",
"assets/assets/content/price.json": "adecedef1b461a635dedea1529d829a6",
"assets/assets/content/profile.json": "2635f1160cd193c570c034c5b79e2c07",
"assets/assets/content/projects.json": "00d5573676dd9327d50cd5f081c12671",
"assets/assets/content/refund_policy.json": "20b613545c620a189a0fac9368f9f243",
"assets/assets/content/services.json": "648e34a4f1b9564a4aee7bb838886b26",
"assets/assets/images/logo_me.png": "39bc2f4656b326f562a2cb968b2f332d",
"assets/assets/images/my_logo.svg": "802a7caf4ff9f2b435387c40af601873",
"assets/assets/projects/test.jpeg": "01a1c566f261e0a3c420a6823df700e3",
"assets/assets/projects/uni_go/mocup_unigo.png": "63f36e9490e3f85dfbb14dcf050f6d29",
"assets/assets/projects/uni_go/uni_1.jpeg": "28dbe75affc0b05b09b9163928484af0",
"assets/assets/projects/uni_go/uni_10.jpeg": "070a24c8f5ac3cd7785c1c6e5178f633",
"assets/assets/projects/uni_go/uni_2.jpeg": "6e4fb58320db3fbac77de84bfc1fd691",
"assets/assets/projects/uni_go/uni_3.jpeg": "d4becb832e98842412405dd811b805e8",
"assets/assets/projects/uni_go/uni_4.jpeg": "81475ad7e4447a5697063fa53ca65116",
"assets/assets/projects/uni_go/uni_5.jpeg": "6933b25647c71bf90ab1fa182d412bac",
"assets/assets/projects/uni_go/uni_6.jpeg": "803498e3b50c532df88a7b2e931a80b1",
"assets/assets/projects/uni_go/uni_7.jpeg": "dbd0c66df83956f896d7f996638b7201",
"assets/assets/projects/uni_go/uni_8.jpeg": "e96b1f2e93eb9ff4142a9254ae29da8c",
"assets/assets/projects/uni_go/uni_9.jpeg": "9b37e2604baf7d9754060fa0922d2ef7",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "71ebbadd8ab69fecab1a986186d7ba26",
"assets/NOTICES": "a7693f5f07c4156f422929171961440e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon-96x96.png": "42864167260c5198a50e03173873c858",
"favicon.ico": "ffb3ba3ac8c91d9626fbc2090fa19cc7",
"favicon.svg": "10f7c9095d0dd91a10dab99c83ab40aa",
"favicon.zip": "c1c153cd7b1c6a2d419b44e9fde41f0d",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "1f09fa81738bd514d42ba89675b0581f",
"index.html": "0fa57328a4bd4b118ae1a9e3b21772e1",
"/": "0fa57328a4bd4b118ae1a9e3b21772e1",
"main.dart.js": "e4840ea19b1f012e671a24eed61335bb",
"manifest.json": "eabecf46037d7473537e49d50695b44d",
"site.webmanifest": "9090e674d41e265d5f03c180fe5f6721",
"version.json": "5925bc3f5cf60b46e777a35e98e3c51f",
"web-app-manifest-192x192.png": "ab87b92824d55cc86be86132aa475151",
"web-app-manifest-512x512.png": "7fc78e8005395e4de53d0d111835ca5f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
