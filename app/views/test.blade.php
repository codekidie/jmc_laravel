<!DOCTYPE html>
<html>
<head>
  <meta charset=utf-8 />
  <title>Bloodhuntphil</title>
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet'>
  <script src='https://api.tiles.mapbox.com/mapbox.js/v2.0.1/mapbox.js'></script>
  <link href='https://api.tiles.mapbox.com/mapbox.js/v2.0.1/mapbox.css' rel='stylesheet' />
  <style>
    body {
      color:#404040;
      font:400 15px/22px 'Source Sans Pro', 'Helvetica Neue', Sans-serif;
      margin:0;
      padding:0;
      -webkit-font-smoothing:antialiased;
      }
    * {
      -webkit-box-sizing:border-box;
         -moz-box-sizing:border-box;
              box-sizing:border-box;
      }
    h1 {
      font-size:22px;
      margin:0;
      font-weight:400;
      }
    a {
      color:#404040;
      text-decoration:none;
      }
      a:hover { color:#101010; }

    .sidebar {
      position:absolute;
      width:33.3333%;
      height:100%;
      top:0;left:0;
      overflow:hidden;
      border-right:1px solid rgba(0,0,0,0.25);
      }
    .pad2 {
      padding:20px;
      }
    .quiet {
      color:#888;
      }
    .map {
      position:absolute;
      left:33.3333%;
      width:66.6666%;
      top:0;bottom:0;
      }
    .heading {
      background:#fff;
      border-bottom:1px solid #eee;
      height:60px;
      line-height:60px;
      padding:0 10px;
      }
    .listings {
      height:100%;
      overflow:auto;
      padding-bottom:60px;
      }
    .listings .item {
      display:block;
      border-bottom:1px solid #eee;
      padding:10px;
      text-decoration:none;
      }
      .listings .item:last-child { border-bottom:none; }
      .listings .item .title {
        display:block;
        color:#00853e;
        font-weight:700;
        }
        .listings .item .title small { font-weight:400; }
        .listings .item.active .title,
        .listings .item .title:hover { color:#8cc63f; }
        .listings .item.active {
          background-color:#f8f8f8;
          }

      ::-webkit-scrollbar {
        width:3px;
        height:3px;
        border-left:0;
        background:rgba(0,0,0,0.1);
        }
      ::-webkit-scrollbar-track {
        background:none;
        }
      ::-webkit-scrollbar-thumb {
        background:#00853e;
        border-radius:0;
        }

    .clearfix { display:block; }
    .clearfix:after {
      content:'.';
      display:block;
      height:0;
      clear:both;
      visibility:hidden;
      }

    /* Marker tweaks */
    .leaflet-popup-close-button {
      display:none;
      }
    .leaflet-popup-content {
      font:400 15px/22px 'Source Sans Pro', 'Helvetica Neue', Sans-serif;
      padding:0;
      width:200px;
      }
      .leaflet-popup-content-wrapper {
        padding:0;
        }
      .leaflet-popup-content h3 {
        background:#91c949;
        color:#fff;
        margin:0;
        display:block;
        padding:10px;
        border-radius:3px 3px 0 0;
        font-weight:700;
        margin-top:-15px;
        }
      .leaflet-popup-content div {
        padding:10px;
        }
      .leaflet-container .leaflet-marker-icon { cursor:pointer; }
  </style>
</head>
<body>
<div class='sidebar'>
  <div class='heading'>
    <h1>Our locations</h1>
  </div>
  <div id='listings' class='listings'></div>
</div>
<div id='map' class='map'> </div>
<script>
  // Replace this accessToken with you own.
  L.mapbox.accessToken = 'pk.eyJ1IjoiY29kZWtpZGllIiwiYSI6IjhUTlh5OWsifQ.-qOBHfHixZaZfYN-gNNrHg';
  // Replace 'examples.map-i80bb8p3' with your own Map ID
  var map = L.mapbox.map('map', 'codekidie.jl6oa1ka')
        .setView([7.075, 125.607, 15], 16);

  var listings = document.getElementById('listings');
  var locations = L.mapbox.featureLayer().addTo(map);

  locations.loadURL('https://www.dropbox.com/s/8dffqk8k4lesy84/bloodhunt.json?dl=0');

  function setActive(el) {
    var siblings = listings.getElementsByTagName('div');
    for (var i = 0; i < siblings.length; i++) {
      siblings[i].className = siblings[i].className
        .replace(/active/, '').replace(/\s\s*$/, '');
    }

    el.className += ' active';
  }

  locations.on('ready', function() {
    locations.eachLayer(function(locale) {

      // Shorten locale.feature.properties to just `prop` so we're not
      // writing this long form over and over again.
      var prop = locale.feature.properties;

      // Each marker on the map.
      var popup = '<h3>Bloodhuntphil</h3><div>' + prop.address;

      var listing = listings.appendChild(document.createElement('div'));
          listing.className = 'item';

      var link = listing.appendChild(document.createElement('a'));
          link.href = '#';
          link.className = 'title';

      link.innerHTML = prop.address;
      if (prop.crossStreet) {
        link.innerHTML += '<br /><small class="quiet">' + prop.crossStreet + '</small>';
        popup += '<br /><small class="quiet">' + prop.crossStreet + '</small>';
      }

      var details = listing.appendChild(document.createElement('div'));
      details.innerHTML = prop.city;
      if (prop.phone) {
        details.innerHTML += ' &middot; ' + prop.phoneFormatted;
      }

      link.onclick = function() {
        setActive(listing);

        // When a menu item is clicked, animate the map to center
        // its associated locale and open its popup.
        map.setView(locale.getLatLng(), 16);
        locale.openPopup();
        return false;
      };

      // Marker interaction
      locale.on('click', function(e) {
          // 1. center the map on the selected marker.
          map.panTo(locale.getLatLng());

          // 2. Set active the markers associated listing.
          setActive(listing);
      });

      popup += '</div>';
      locale.bindPopup(popup);
    });
  });

  locations.on('layeradd', function(e) {
    var marker = e.layer;
    marker.setIcon(L.icon({
      iconUrl: 'https://www.dropbox.com/s/ltab4vgeh8g4zio/logo.png',
      iconSize: [56, 56],
      iconAnchor: [28, 28],
      popupAnchor: [0, -34]
    }));
  });
</script>
</body>
</html>
