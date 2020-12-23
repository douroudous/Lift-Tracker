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
        const max = button.parentElement.dataset.maxReps;

        if (isNaN(reps)) {
          button.innerHTML = input.value = max;
        } else if (reps === '0') {
          button.innerHTML = '-';
          input.value = null;
        } else {
          button.innerHTML = input.value = parseInt(reps) - 1;
        }
      });
    });
  },
};

document.addEventListener('DOMContentLoaded', () => {
  new WorkoutFormHandler();
});
