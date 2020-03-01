'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "3966c069e4bc1ee55487120c7b4c9f77",
"/main.dart.js": "50138e9c56c330b2455775fabe1b9618",
"/favicon.png": "59ec843a1933bef726942202d9f48d99",
"/icons/icon.svg": "879813ba3053ea761f758fd0e5092929",
"/manifest.json": "494ec102cdfc8375b3e5637cfe7ae525",
"/assets/LICENSE": "d11471c61cd65c0a30c3a33403bf2b38",
"/assets/AssetManifest.json": "52550001ce1751428dae1ef15371f183",
"/assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/avatar.jpg": "75ab71512da4f9ccc39eea8e48719400"
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
