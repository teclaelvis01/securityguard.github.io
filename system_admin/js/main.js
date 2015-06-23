(function() {
  var $confirm;

  $confirm = null;

  $(function() {
    var $createDestroy, $window, sectionTop;
    $window = $(window);
    sectionTop = $(".top").outerHeight() + 20;
    $createDestroy = $("#switch-create-destroy");
    hljs.initHighlightingOnLoad();
	
	$.fn.bootstrapSwitch.defaults.size = 'mini';
	$.fn.bootstrapSwitch.defaults.onColor = 'success';
	$.fn.bootstrapSwitch.defaults.offColor = 'danger';
	
    $("input[type=\"checkbox\"], input[type=\"radio\"]").not("[data-switch-no-init]").bootstrapSwitch();
    $("[data-switch-get]").on("click", function() {
      var type;
      type = $(this).data("switch-get");
	  console.log(type);
      return alert($("#switch-" + type).bootstrapSwitch(type));
    });

  });

}).call(this);
