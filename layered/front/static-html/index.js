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
    fetch('https://business.wzqabp4un7u.us-south.codeengine.appdomain.cloud/addUser',
    {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: {
            name: name,
            age: age
        }
    })
    .then(response => response.json())
    .then(data => console.log(data))

    // Clear the form
    saveForm.reset();
});

// Get the average age from the database or file and display it
// This is just a placeholder; replace with actual code to retrieve the average age from the database or file

var averageAge = 0;
fetch('https://business.wzqabp4un7u.us-south.codeengine.appdomain.cloud/averageAge')
.then(response => response.json())
.then(data => {
     averageAge = data["averageAge"];
     displayAverageAge(averageAge);
});


