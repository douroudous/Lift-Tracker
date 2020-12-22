function WorkoutFormHandler() {
  this.init();
}

WorkoutFormHandler.prototype = {
  init() {
    this.bindEventListeners();
  },
  bindEventListeners() {
    document.querySelectorAll('.rep_count_button').forEach((b) => {
      b.addEventListener('click', (e) => {
        const button = e.target;
        const reps = button.innerHTML;
        const input = button.nextElementSibling;
        const max = 5; // change later

        const newReps = isNaN(reps) ? max : reps === '0' ? '-' : parseInt(reps) - 1;
        input.value = button.innerHTML = newReps;
      });
    });
  },
};

document.addEventListener('DOMContentLoaded', () => {
  new WorkoutFormHandler();
});
