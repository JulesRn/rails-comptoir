const loadAnimation = () => {
  const hideMeetingDivs = document.querySelectorAll(".hide-meeting");
  const loaderDiv = document.querySelector(".loader");
  if (hideMeetingDivs, loaderDiv) {
    console.log(loaderDiv);
    hideMeetingDivs.forEach((div) => {
      div.style.display = "none";
    })
    setTimeout(function() {
      hideMeetingDivs.forEach((div) => {
        div.style.display = "block";
      })
      loaderDiv.style.display = "none";
    }, 3000);
  }
}

export { loadAnimation };
