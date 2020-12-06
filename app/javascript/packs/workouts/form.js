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
        const { setId, liftWorkoutId } = button.dataset;
        const max = 5; // change later with dataset value

        const input = document.querySelector('#workout_rep_counts');
        const inputArray = JSON.parse(input.value);

        const repCount = (reps) => {
          return isNaN(reps) ? max : reps === '0' ? '-' : parseInt(reps) - 1;
        }

        inputArray.map((lw) => {
          if (lw.lift_workout === parseInt(liftWorkoutId)) {
            lw.reps[setId - 1] = button.innerHTML = repCount(button.innerHTML);
          }
        });

        input.value = JSON.stringify(inputArray);
      });
    });
  },
};

document.addEventListener('DOMContentLoaded', () => {
  new WorkoutFormHandler();
});
