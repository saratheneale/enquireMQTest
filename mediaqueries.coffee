console.log 'hey thered'

CatZoomHelper = {

  meowZooms: [
    1.70
    1.60
    1.51
    1.41
    1.35
    1.30
    1.25
    1.20
    1.15
    1.10
    1.05
    1
    0.95
    0.90
    0.89
    0.87
    0.83
    # 0.75
    0.79
    0.75
    0.72
    # 0.69
    0.65
    # 0.62
  ]

  registerMediaQueries: (handler) ->
    enquire.register("screen and (min-height: 1220px)", handler(1.70))
    #1217 - 1240 ~1.62 or 1.65?
    enquire.register("screen and (min-height: 1136px)", handler(1.60))

    enquire.register("screen and (max-height: 1135px)", handler(1.51))
    #
    enquire.register("screen and (max-height: 1070px)", handler(1.41))
    enquire.register("screen and (max-height: 1010px)", handler(1.35))
    enquire.register("screen and (max-height:  989px)", handler(1.30))
    enquire.register("screen and (max-height:  940px)", handler(1.25))
    enquire.register("screen and (max-height:  925px)", handler(1.20))
    enquire.register("screen and (max-height:  875px)", handler(1.15))
    enquire.register("screen and (max-height:  850px)", handler(1.10))
    enquire.register("screen and (max-height:  830px)", handler(1.05))
    # enquire.register("screen and (max-height:  810px)", handler(1.00))
    enquire.register("screen and (max-height:  790px)", handler( 1.00))
    enquire.register("screen and (max-height:  745px)", handler(  .95))
    enquire.register("screen and (max-height:  725px)", handler( .90))
    # enquire.register("screen and (max-height:  675px)", handler( .89))
    enquire.register("screen and (max-height:  685px)", handler( .89))
    enquire.register("screen and (max-height:  618px)", handler( .83))
    enquire.register("screen and (max-height:  590px)", handler( .79))
    enquire.register("screen and (max-height:  570px)", handler( .75))
    enquire.register("screen and (max-height:  550px)", handler( .72))
    enquire.register("screen and (max-height:  520px)", handler( .65))
}

handler = (zoom) ->
  zoom: zoom

  MAX_ZOOM: 1.7

  setup: ->

  zooms: CatZoomHelper.meowZooms

  match: ->

    this.zoomIndex = this.zooms.indexOf(this.zoom)
    if this.zoomIndex is -1
      this.zoomIndex = this.zooms[7]
      console.error 'zoomIndex is off'

    console.log 'MATCH: zoom' + this.zoom + 'window height: ' + window.innerHeight

    $('img').css("height",(689*this.zoom)+"px")


  unmatch: ->
    unmatchZoom;
    if this.zoom is this.MAX_ZOOM
      unmatchZoom = this.zooms[this.zoomIndex + 1]
    else
      unmatchZoom = this.zooms[this.zoomIndex - 1]

    $('img').css("height",(689*unmatchZoom)+"px")

    console.log "UNMATCH from zoom " + this.zoom + "TO " + unmatchZoom + 'window height: ' + window.innerHeight

    #should we update zoom index? or this.zoom? or new rhis.unmatchedzoom?

    #min-height has a similar issue.


CatZoomHelper.registerMediaQueries(handler)




