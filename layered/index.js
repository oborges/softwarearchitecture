// index.js

const displayAverageAge = (averageAge) => {
    const averageAgeElement = document.getElementById('average-age');
    averageAgeElement.innerText = `The average age is ${averageAge}`;
};

const saveForm = document.getElementById('save-form');
saveForm.addEventListener('submit', (event) => {
    event.preventDefault();
    const name = document.getElementById('name-input').value;
    const age = document.getElementById('age-input').value;

    // Save the data to the database or file
    const data = { name, age };
    // This is just a placeholder; replace with actual code to save data to the database or file

    // Clear the form
    saveForm.reset();
});

// Get the average age from the database or file and display it
// This is just a placeholder; replace with actual code to retrieve the average age from the database or file
const averageAge = 30;
displayAverageAge(averageAge);

