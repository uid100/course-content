document.addEventListener('DOMContentLoaded', function () {
    fetch('schedule.json')
        .then(response => response.json())
        .then(data => {
            const scheduleContainer = document.getElementById('schedule-container');
            data.terms.forEach(termObject => {
                const term = Object.keys(termObject)[0];
                const details = termObject[term];

                const card = document.createElement('div');
                card.classList.add('col');
                card.innerHTML = `
                    <div class="card">
                        <div class="card-header">${term}</div>
                        <div class="card-body">
                            <ul class="list-unstyled" id="${term.replace(/\s+/g, '-').toLowerCase()}-list">
                                </ul>
                        </div>
                    </div>
                `;
                scheduleContainer.appendChild(card);

                const termList = document.getElementById(`${term.replace(/\s+/g, '-').toLowerCase()}-list`);
                details.forEach(item => {
                    const key = Object.keys(item)[0];
                    const values = item[key];
                    const listItem = document.createElement('li');
                    listItem.innerHTML = `<strong>${key}:</strong> ${values.length > 0 ? '<ul>' + values.map(val => `<li>${val}</li>`).join('') + '</ul>' : 'None'}`;
                    termList.appendChild(listItem);
                });
            });
        })
        .catch(error => {
            console.error('Error loading or processing JSON:', error);
            const scheduleContainer = document.getElementById('schedule-container');
            scheduleContainer.innerHTML = '<div class="alert alert-danger" role="alert">Failed to load schedule data. Please try again later.</div>';
        });
});