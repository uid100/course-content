function setPageTitleFromJSON(jsonPath) {
    fetch(jsonPath)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            // Set the page title
            document.title = data.title;
        })
        .catch(error => {
            console.error('Error fetching JSON:', error);
        });
}

// Function to initialize the timeline
function initializeTimeline(jsonPath) {
    fetch(jsonPath)
        .then(response => {
            if (!response.ok) {
                throw new Error("Failed to load JSON data.");
            }
            return response.json();
        })
        .then(data => {
            const { startDate, endDate } = data;

            // Parse dates
            const start = new Date(startDate);
            const end = new Date(endDate);
            const today = new Date();

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
            // document.getElementById('current-label').textContent = today.toLocaleDateString();
            document.getElementById('current-label').textContent = 'today';

            document.getElementById('start-label').style.left = '0%';
            document.getElementById('end-label').style.left = '100%';
            document.getElementById('current-label').style.left = `${currentPosition}%`;
        })
        .catch(error => {
            console.error("Error loading timeline data:", error);
        });
}


document.addEventListener("DOMContentLoaded", () => {
    // The path to the JSON file
    const jsonFilePath = "../content.json";

    // Fetch the JSON file
    fetch(jsonFilePath)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Error loading JSON file: ${response.statusText}`);
            }
            return response.json();
        })
        .then(data => {
            // Extract the logo path from the JSON
            const logoPath = data?.college?.logoPath;
            const website = data?.college?.website;

            // set the logo image source
            if (logoPath) {
                // Replace `~` with the base path if necessary
                const relativePath = logoPath.replace(/^~\//, "");

                // Set the src attribute of the image
                const imgElement = document.getElementById("college-logo");
                imgElement.src = relativePath;
            } else {
                console.error("Logo path not found in JSON.");
            }

            // set the website link
            if (website) {
                // Set the href attribute of the link
                const linkElement = document.getElementById("college-link");
                linkElement.href = website;
            } else {
                console.error("Website link not found in JSON.");
            }
        })
        .catch(error => {
            console.error("Failed to load or parse JSON:", error);
        });
});
