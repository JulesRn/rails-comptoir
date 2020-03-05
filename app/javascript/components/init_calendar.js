const initCalendar = () => {
  console.log('io')
  const calendarBtn = document.querySelector(".fa-calendar-check")
  calendarBtn.addEventListener('click', () => {
    document.querySelector('#calendar-form').classList.toggle('calendar-active')
  })

  const validates = document.querySelector('.btn-validate-availabity')
  if (validates){
    validates.addEventListener('click', () => {
       document.querySelector('#calendar-form').classList.remove('calendar-active')
    })
  }
}



export {initCalendar};
