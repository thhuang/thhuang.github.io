'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "3966c069e4bc1ee55487120c7b4c9f77",
"/main.dart.js": "47baecde4ba9d4de828aed5d66a3844b",
"/favicon.png": "59ec843a1933bef726942202d9f48d99",
"/icons/icon.svg": "879813ba3053ea761f758fd0e5092929",
"/manifest.json": "494ec102cdfc8375b3e5637cfe7ae525",
"/assets/LICENSE": "9f69edcc25795745c09624396a67241f",
"/assets/AssetManifest.json": "e60d8e9168479a4ab3ed6b24fa7854e7",
"/assets/FontManifest.json": "c767a2e624e1f974a1f4d52a1776cfd3",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/avatar.jpg": "75ab71512da4f9ccc39eea8e48719400",
"/assets/assets/fonts/LibreBaskerville/LibreBaskerville-Italic.ttf": "9ecf41ba09bcd5e10c2524b2704ddc3f",
"/assets/assets/fonts/LibreBaskerville/LibreBaskerville-Regular.ttf": "228126bc49970c1f293e1bf96e8e2604",
"/assets/assets/fonts/Oxanium/Oxanium-Regular.ttf": "314cfaceddaeff5e81e79d1a34b3b1fa",
"/assets/assets/fonts/Oxanium/Oxanium-Medium.ttf": "400ab61503d6af26e2d5eb203a065a78"
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
