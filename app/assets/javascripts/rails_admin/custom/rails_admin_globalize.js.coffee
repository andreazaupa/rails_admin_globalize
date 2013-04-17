jQuery ->
  $locale_select = $("#target_locale_select")

  $locale_select.on 'change', (e) ->
    url = $locale_select.data("target-url")
    location.replace updateQueryStringParameter(url, "target_locale", $locale_select.val())

  updateQueryStringParameter = (uri, key, value) ->
    separator = if (uri.indexOf('?') != -1) then "&" else "?"
    reg_exp = new RegExp("([?|&])#{key}=.*?(&|$)", "i")
    if (uri.match(reg_exp))
      return uri.replace(reg_exp, "$1#{key}=#{value}$2")
    else
      return "#{uri}#{separator}#{key}=#{value}"
