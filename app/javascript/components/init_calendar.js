const initCalendar = () => {
  console.log('io')
 const calendarBtn = document.querySelector(".fa-calendar-check")
  calendarBtn.addEventListener('click', () => {
  document.querySelector('#calendar-form').classList.toggle('calendar-active')
  })
}

export {initCalendar};
