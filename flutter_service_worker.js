'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "b0fc6f5ef6dd89bec8cd9e070ffae8af",
"/main.dart.js": "dfe514a8337e60a035a1b795cf6cf03e",
"/favicon.png": "59ec843a1933bef726942202d9f48d99",
"/icons/icon.svg": "879813ba3053ea761f758fd0e5092929",
"/manifest.json": "634c4679c49e3cac23441b345a4b0fab",
"/assets/LICENSE": "d11471c61cd65c0a30c3a33403bf2b38",
"/assets/AssetManifest.json": "52550001ce1751428dae1ef15371f183",
"/assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/avatar.jpg": "d9ee95a014c09391a461da029348737f"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
