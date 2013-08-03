define ->
  parseLocation = (url) ->
    
    url = url.toString()
    
    result = {}

    result['url'] = url.split('?')[0]
    result['hash'] = url.split('#')[1]
    result['query'] = {}

    if url.indexOf('?') > 0
      url.split('?')[1].split('#')[0].split('&').forEach (i) ->
        i = i.split('=')
        result.query[i[0]] = i[1]

    result