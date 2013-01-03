$(function() {
  $("#target_locale_select").live("change", function(e) {
    var url = $("#target_locale_select").data("target-url");
    location.replace(updateQueryStringParameter(url, "target_locale", $("#target_locale_select").val()));
  });
});

function updateQueryStringParameter(uri, key, value) {
  var re = new RegExp("([?|&])" + key + "=.*?(&|$)", "i");
  var separator = uri.indexOf('?') !== -1 ? "&" : "?";
  if (uri.match(re)) {
    return uri.replace(re, '$1' + key + "=" + value + '$2');
  }
  else {
    return uri + separator + key + "=" + value;
  }
}
