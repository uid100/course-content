// Function to initialize the timeline
function showTimeLine(start, end, today) {
    // Get timeline element
    const timeline = document.querySelector('.timeline');

    // Calculate total duration
    const totalDuration = end - start;
    const currentDuration = today - start;

    // Prevent out-of-range calculations
    const currentPosition = Math.max(
        0,
        Math.min((currentDuration / totalDuration) * 100, 100)
    );

    // Set marker positions
    document.getElementById('start-marker').style.left = '0%';
    document.getElementById('end-marker').style.left = '100%';
    document.getElementById('current-marker').style.left = `${currentPosition}%`;

    // Set labels
    document.getElementById('start-label').textContent = start.toLocaleDateString() //toDateString();
    document.getElementById('end-label').textContent = end.toLocaleDateString();
    document.getElementById('current-label').innerHTML = 'today:<br>' + today.toLocaleDateString();
    // document.getElementById('current-label').textContent = today.toLocaleDateString();

    document.getElementById('start-label').style.left = '0%';
    document.getElementById('end-label').style.left = '100%';
    document.getElementById('current-label').style.left = `${currentPosition}%`;
}

// Function to get query parameters
function getQueryParams() {
    const params = new URLSearchParams(window.location.search);
    const start = params.get("start");
    const end = params.get("end");

    if (!start || !end) {
        console.error("Start or End date is missing in the URL query parameters.");
        return null;
    }

    return {
        start: new Date(start),
        end: new Date(end),
    };
}

// Initialize timeline on page load
window.addEventListener("DOMContentLoaded", () => {
    const dates = getQueryParams();
    if (dates) {
        const today = new Date();
        showTimeLine(dates.start, dates.end, today);
    }
});
