setup_google_analytics = ->
  window._gaq = [['_setAccount', 'UA-8995709-3'], ['_trackPageview']]
  ga = document.createElement('script')
  ga.type = 'text/javascript'
  ga.async = true;
  ga.src = 'http://www.google-analytics.com/ga.js'
  s = document.getElementsByTagName('script')[0]
  s.parentNode.insertBefore(ga, s)

setup_facebook_js = ->
  s = 'script'
  id = 'facebook-jssdk'
  fjs = document.getElementsByTagName(s)[0]
  return if document.getElementById(id)
  js = document.createElement(s)
  js.id = id
  js.src = "//connect.facebook.net/ko_KR/all.js#xfbml=1&appId=167741896656859"
  fjs.parentNode.insertBefore(js, fjs)

unless window.location.hostname == '0.0.0.0'
  $(setup_google_analytics)
  $(setup_facebook_js)
