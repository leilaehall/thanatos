import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS

flatpickr(".datepicker", {
  altInput: true,
  dateFormat: 'n/j/Y',
  minDate: "today",
})
