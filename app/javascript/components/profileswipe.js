const swipeProfile = () => {
  // console.log($(".card-profile"));
  // console.log("hello");

  var profiles = $(document.querySelectorAll(".card-profile"));
  console.log(profiles);

  var animating = false;
  var cardsCounter = 0;
  // var numOfCards = 6;
  var decisionVal = 80;
  var pullDeltaX = 0;
  var deg = 0;
  var $card, $cardReject, $cardLike;

  profiles.each(function() {
    console.log($(this));
    console.log($(this).find(".profile-link"));

    function pullChange() {
      animating = true;
      deg = pullDeltaX / 10;
      $card.css("transform", "translateX(-'100vw') rotate("+ deg +"deg)");

      // var opacity = pullDeltaX / 100;
      // var rejectOpacity = (opacity >= 0) ? 0 : Math.abs(opacity);
      // var likeOpacity = (opacity <= 0) ? 0 : opacity;
      // $cardReject.css("opacity", rejectOpacity);
      // $cardLike.css("opacity", likeOpacity);
    };

    function release() {

      if (pullDeltaX >= decisionVal) {
        $card.addClass("to-right");
      } else if (pullDeltaX <= -decisionVal) {
        $card.addClass("to-left");
      }

      if (Math.abs(pullDeltaX) >= decisionVal) {
        $card.addClass("inactive");

        setTimeout(function() {
          $card.addClass("below").removeClass("inactive to-left to-right");
          cardsCounter++;
          if (cardsCounter === numOfCards) {
            cardsCounter = 0;
            $(".demo__card").removeClass("below");
          }
        }, 300);
      }

      if (Math.abs(pullDeltaX) < decisionVal) {
        $card.addClass("reset");
      }

      setTimeout(function() {
        $card.attr("style", "").removeClass("reset")
          .find(".demo__card__choice").attr("style", "");

        pullDeltaX = 0;
        animating = false;
      }, 300);
    };

    $(document).on("mousedown touchstart", ".demo__card:not(.inactive)", function(e) {
      if (animating) return;

      $card = $(this);
      // $cardReject = $(".demo__card__choice.m--reject", $card);
      // $cardLike = $(".demo__card__choice.m--like", $card);
      var startX =  e.pageX || e.originalEvent.touches[0].pageX;

      $(document).on("mousemove touchmove", function(e) {
        var x = e.pageX || e.originalEvent.touches[0].pageX;
        pullDeltaX = (x - startX);
        if (!pullDeltaX) return;
        pullChange();
      });

      $(document).on("mouseup touchend", function() {
        $(document).off("mousemove touchmove mouseup touchend");
        if (!pullDeltaX) return; // prevents from rapid click events
        release();
      });
    });





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
