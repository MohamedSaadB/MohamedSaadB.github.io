'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"android-icon-144x144.png": "8635e615f76bd07b3eccf815fef156a1",
"android-icon-192x192.png": "405e5bed63a5864d9171bf34152c73d1",
"android-icon-36x36.png": "622c860ec41131d58a1969604193dd3f",
"android-icon-48x48.png": "bb903a8c3c8833d81285970da0a62bd6",
"android-icon-72x72.png": "25d0e2bb0fd35842f1a152939075b2ef",
"android-icon-96x96.png": "77b7b9cdf19ff2244fbe644ad8ff3549",
"apple-icon-114x114.png": "4b50fa0c601bbc82e06f1b221322d575",
"apple-icon-120x120.png": "0238af7eb3ea07414778e020a7c60d38",
"apple-icon-144x144.png": "8635e615f76bd07b3eccf815fef156a1",
"apple-icon-152x152.png": "bf15a30af7b823b9baca3400195d6230",
"apple-icon-180x180.png": "4dbb7c9a97f6473851d4700b436d723c",
"apple-icon-57x57.png": "e1da9ab4be7e79798e129e408467ebc7",
"apple-icon-60x60.png": "f035cf418217748e72e3d58faef92b81",
"apple-icon-72x72.png": "25d0e2bb0fd35842f1a152939075b2ef",
"apple-icon-76x76.png": "a1af9b0572d75a4fa1ae1d5e41248895",
"apple-icon-precomposed.png": "cb01295b8c75220498e57ce9a660fd95",
"apple-icon.png": "769e21c53ed2b334977f86510ab970e0",
"assets/AssetManifest.bin": "1514eba2394182e6341800d56c6a7b61",
"assets/AssetManifest.bin.json": "7acbd288e3b9110b7552d13d371c2bca",
"assets/AssetManifest.json": "ecdb1578e0a0d11ea0980147b404d197",
"assets/assets/content/profile.json": "2635f1160cd193c570c034c5b79e2c07",
"assets/assets/content/projects.json": "00d5573676dd9327d50cd5f081c12671",
"assets/assets/content/services.json": "648e34a4f1b9564a4aee7bb838886b26",
"assets/assets/images/my_logo.svg": "ce1d050945301c69ed83c2973ed6c558",
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
"assets/fonts/MaterialIcons-Regular.otf": "2b4c4fa0e54cdb07f69fff7dedff643e",
"assets/NOTICES": "a7693f5f07c4156f422929171961440e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
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
"favicon-16x16.png": "41b43d2d86125fe6cae6508b343b11e4",
"favicon-32x32.png": "20d36c082774899d0cf93d6ff560b7ba",
"favicon-96x96.png": "27f95a2f8849d828ca67b94af881b2f0",
"favicon.ico": "71113623863d4412a2a418fe0d3be860",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "438cbb739df7bad12873715ec7dcb4e2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "83f6aee02de19b1db95fe52645974675",
"/": "83f6aee02de19b1db95fe52645974675",
"main.dart.js": "623de60334f042db78906b697bc2c8ed",
"manifest.json": "eabecf46037d7473537e49d50695b44d",
"ms-icon-144x144.png": "df72fb7b707adec7410ee12faf52dda1",
"ms-icon-150x150.png": "9710eb4c344fe3048268a26cfacd875a",
"ms-icon-310x310.png": "dbe7ba81cd780968eefbce72c7d5a4da",
"ms-icon-70x70.png": "53b1f7c44cfe5a8f22c5365cb69d66ca",
"version.json": "5925bc3f5cf60b46e777a35e98e3c51f"};
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
