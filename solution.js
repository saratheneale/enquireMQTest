// Generated by CoffeeScript 1.7.1
(function() {
  var CatZoomHelper, handler;

  console.log('hey thered');

  CatZoomHelper = {
    meowZooms: [1.70, 1.60, 1.51, 1.41, 1.35, 1.30, 1.25, 1.20, 1.15, 1.10, 1.05, 1, 0.95, 0.90, 0.89, 0.87, 0.83, 0.79, 0.75, 0.72, 0.65],
    registerMediaQueries: function(handler) {
      enquire.register("screen and (max-height:  520px)", handler(.65));
      enquire.register("screen and (max-height:  550px) and (min-height:  521px)", handler(.72));
      enquire.register("screen and (max-height:  570px) and (min-height:  551px)", handler(.75));
      enquire.register("screen and (max-height:  590px) and (min-height:  571px)", handler(.79));
      enquire.register("screen and (max-height:  618px) and (min-height:  591px)", handler(.83));
      enquire.register("screen and (max-height:  685px) and (min-height:  619px)", handler(.89));
      enquire.register("screen and (max-height:  725px) and (min-height:  686px)", handler(.90));
      enquire.register("screen and (max-height:  745px) and (min-height:  726px)", handler(.95));
      enquire.register("screen and (max-height:  790px) and (min-height:  746px)", handler(1.00));
      enquire.register("screen and (max-height:  830px) and (min-height:  791px)", handler(1.05));
      enquire.register("screen and (max-height:  850px) and (min-height:  831px)", handler(1.10));
      enquire.register("screen and (max-height:  875px) and (min-height:  851px)", handler(1.15));
      enquire.register("screen and (max-height:  925px) and (min-height:  876px)", handler(1.20));
      enquire.register("screen and (max-height:  940px) and (min-height:  926px)", handler(1.25));
      enquire.register("screen and (max-height:  989px) and (min-height:  941px)", handler(1.30));
      enquire.register("screen and (max-height: 1010px) and (min-height:  990px)", handler(1.35));
      enquire.register("screen and (max-height: 1070px) and (min-height:  1011px)", handler(1.41));
      enquire.register("screen and (max-height: 1135px) and (min-height:  1071px)", handler(1.51));
      enquire.register("screen and (max-height: 1220px) and (min-height:  1136px)", handler(1.60));
      return enquire.register("screen and (min-height: 1221px)", handler(1.70));
    }
  };

  handler = function(zoom) {
    return {
      zoom: zoom,
      MAX_ZOOM: 1.7,
      setup: function() {},
      zooms: CatZoomHelper.meowZooms,
      match: function() {
        this.zoomIndex = this.zooms.indexOf(this.zoom);
        if (this.zoomIndex === -1) {
          this.zoomIndex = this.zooms[7];
          console.error('zoomIndex is off');
        }
        console.log('MATCH: zoom' + this.zoom + 'window height: ' + window.innerHeight);
        return $('img').css("height", (689 * this.zoom) + "px");
      },
      unmatch: function() {}
    };
  };

  CatZoomHelper.registerMediaQueries(handler);

  $();

}).call(this);