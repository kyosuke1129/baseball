

window.addEventListener("load", function() {
  $('#check').click(function() {
    $(".average").slideToggle(this.checked);
  });
  $('#check2').click(function() {
    $(".on_base").slideToggle(this.checked);
    $('#check2').attr("checked", true);
  });
  $('#check3').click(function() {
    $(".sulluging").slideToggle(this.checked);
  });
  $('#check4').click(function() {
    $(".ops").slideToggle(this.checked);
  });
});



