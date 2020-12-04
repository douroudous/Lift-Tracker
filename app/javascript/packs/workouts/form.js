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
        const input = e.target.nextElementSibling;
        const max = 5;

        if (input.value === '') {
          button.innerHTML = max;
          input.value  = max;
        } else if (input.value === '0') {
          button.innerHTML = '-';
          input.value = null;
        } else {
          button.innerHTML--;
          input.value--;
        }
      });
    });
  },
};

document.addEventListener('DOMContentLoaded', () => {
  new WorkoutFormHandler();
});
