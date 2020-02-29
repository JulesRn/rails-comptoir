const swipeProfile = () => {
  // console.log($(".card-profile"));
  // console.log("hello");

  var profiles = $(".card-profile");
  console.log(profiles);

  profiles.each(function() {
    console.log($(this));
    console.log($(this).find(".profile-link"));

    $(this).swipe({
      swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
        console.log($(this))
        var profileId = $(this).attr("id").split("-")[1];
        var btnNext = $(this).find(`#next-profile_${profileId}`);
        var btnMeet = $(this).find(`#meet-profile_${profileId}`);
        var btnProfile = $(this).find(".profile-link");

        if (direction === "left") {
          btnNext[0].click();
        } else if (direction === "right") {
          btnMeet[0].click();
        } else if (direction === "up") {
          btnProfile[0].click();
        }
      },
      threshold:0,
      fingers:`all`
    });
  })


}


export { swipeProfile };
