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

        const determineRepCount = (repCount) => {
          if (isNaN(repCount)) {
            return max;
          } else if (repCount === '0') {
            return '-';
          }

          return parseInt(repCount) - 1;
        };

        inputArray.map((liftWorkout) => {
          if (liftWorkout.lift_workout === parseInt(liftWorkoutId)) {
            const newRepCount = determineRepCount(button.innerHTML);
            button.innerHTML = newRepCount;
            liftWorkout.reps[setId - 1] = newRepCount;
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
