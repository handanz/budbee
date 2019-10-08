const initFlatpickr = () => {
  if(document.querySelectorAll('.datepicker').length > 0) {
    let datesElement = document.getElementById("meeting-dates");
    let dates = JSON.parse(datesElement.dataset.meetingDates);
    flatpickr(".datepicker", {
      // enableTime: true,
      // Select the altvailable meetings dates from groups/show.html.erb file
      enable: dates,
      minDate: "today"
    });
  }
}

export { initFlatpickr };
