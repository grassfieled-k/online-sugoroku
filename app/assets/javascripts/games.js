let my_player = {};
let my_player_id = '';

$(function() {
  $('.js-btn-players').on('click', function() {
    my_player_id = $(this).data('player-id');
    my_player    = JSON.parse(gon.players).find((player) => player.player_id === my_player_id);
    $('#my-player-name').text(my_player.player_name);
    $('#modal-choose-player').modal('hide');
  });
});

$(window).on('load', function() {
  $('#modal-choose-player').modal('show');
});
