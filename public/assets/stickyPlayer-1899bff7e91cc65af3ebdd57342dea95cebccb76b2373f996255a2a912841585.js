// get the file link from a selected ep
$(".play-button").click(function(){
  var playerLink = $(this).attr("name");
  var playerTitle = $(this).attr("value");
  console.log(playerTitle);
// update the player 
  $("#stickyPlayer").attr("src", playerLink).delay( 500 );
//play the ep after the user clicks the post play button
  $("button[title|='Play/Pause']").click();
// set the title text of the stickyPlayer title
  $("h2[id='stickyPlayerCurrentEp']").text(playerTitle);
//display current ep with slide in effect  
  $("#audio-player-title").slideDown( 500 ).delay( 2000 ).slideUp( 500 );
});


