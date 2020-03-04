const initChrono = () => {
  let interval;
  let initTime = parseInt(countdown.innerText, 10);

  const updateChrono = () => {
    initTime = initTime - 100;
    var heure = parseInt((initTime / 3600), 10);
    var reste = (initTime % 3600);
    var minutes = parseInt((reste / 60),10);
    var seconde = reste % 60;
    var newHour = heure + ":" + minutes + ":" + seconde

    if (heure + minutes + seconde < 1) {
      countdown.innerText = "00:00:00"
      clearInterval(interval)
      window.location.href = window.location.origin + '/users';
    }

    countdown.innerText = newHour
  }
  updateChrono();
  interval = setInterval(updateChrono, 1);
}


export { initChrono };
