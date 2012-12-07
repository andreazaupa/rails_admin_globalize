$(function() {
  $("#target_locale_select").live("change", function(e) {
    var url = $("#target_locale_select").data("target-url");
    location.replace(url+"?target_locale="+$("#target_locale_select").val());
  });
});
