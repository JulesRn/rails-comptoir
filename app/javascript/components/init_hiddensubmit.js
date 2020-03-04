const hiddenSubmit = () => {
  const triggersSubmit = document.querySelectorAll(".trigger_submit")
    triggersSubmit.forEach((triggerSubmit) => {
      triggerSubmit.addEventListener('click', (e) => {
        e.toElement.control.checked = true;
        document.getElementById("new_feedback").submit();
    })
  })
};

export { hiddenSubmit }
