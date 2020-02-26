const swipeProfile = () => {
  console.log("hello");

  var profiles = $(".card-profile");
  console.log(profiles);

  profiles.each(function() {
    // console.log($(this));

    $(this).swipe({
      swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
        console.log($(this))
        var profileId = $(this).attr("id").split("-")[1];
        // console.log(profileId);
        var btnNext = $(this).find(`#next-profile_${profileId}`);
        // console.log(btnNext);
        var btnMeet = $(this).find(`#meet-profile_${profileId}`);
        // console.log(btnMeet);
        if (direction === "left") {
          btnNext.click();
        } else if (direction === "right") {
          btnMeet.click();
        }
      },
      threshold:0,
      fingers:`all`
    });
  })


}


export { swipeProfile };
