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
                details.forEach(schoolObject => {
                    const schoolName = Object.keys(schoolObject)[0];
                    const courses = schoolObject[schoolName];
                    const listItem = document.createElement('li');
                    listItem.innerHTML = `<strong>${schoolName}:</strong> ${courses.length > 0 ? '<ul>' + courses.map(course => `<li><a href="../../homepage.html?path=${encodeURIComponent(schoolName + '/' + course)}">${course}</a></li>`).join('') + '</ul>' : 'None'}`;
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