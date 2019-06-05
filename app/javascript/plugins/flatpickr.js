import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS

flatpickr(".datepicker", {
  altInput: true,
  dateFormat: 'j/n/Y',
  minDate: "today",
})
