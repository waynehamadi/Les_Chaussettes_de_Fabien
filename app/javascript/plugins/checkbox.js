const manageCheckbox = () => {
  const choices = document.querySelectorAll('.dirtyness-choice');
  console.log(choices);

  choices.forEach( (choice) => {
    choice.addEventListener('click', (event) => {
      const checkActive = document.querySelector('.active');
      if (checkActive === null) {
        event.currentTarget.classList.add("active")
      } else {
        checkActive.classList.remove("active")
        event.currentTarget.classList.add("active")
      }
    });
  });
};

export { manageCheckbox }

