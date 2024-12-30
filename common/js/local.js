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
            const { startDate, endDate } = data?.course?.section;

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
            // document.getElementById('current-label').textContent = 'today';
            document.getElementById('current-label').textContent = today.toLocaleDateString();

            document.getElementById('start-label').style.left = '0%';
            document.getElementById('end-label').style.left = '100%';
            document.getElementById('current-label').style.left = `${currentPosition}%`;
        })
        .catch(error => {
            console.error("Error loading timeline data:", error);
        });
}

// Function to extract query parameters
function getQueryParam(param) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(param);
}

// Load JSON data and render content
async function loadAndRenderJSON() {
    const jsonFileName = getQueryParam('file');

    if (!jsonFileName) {
        document.getElementById('content').textContent = "Error: No JSON file specified.";
        return;
    }

    try {
        const response = await fetch(jsonFileName);
        if (!response.ok) {
            throw new Error(`Failed to fetch JSON file: ${response.statusText}`);
        }
        const data = await response.json();

        // Update the page title and content
        document.getElementById('pageTitle').textContent = data.title || "Default Title";
        const contentDiv = document.getElementById('content');
        contentDiv.innerHTML = ''; // Clear any existing content

        if (data.items && Array.isArray(data.items)) {
            data.items.forEach(item => {
                const itemDiv = document.createElement('div');
                itemDiv.textContent = item;
                contentDiv.appendChild(itemDiv);
            });
        } else {
            contentDiv.textContent = "No items found in the JSON file.";
        }
    } catch (error) {
        console.error(error);
        document.getElementById('content').textContent = "Error loading JSON file.";
    }
}

document.addEventListener("DOMContentLoaded", () => {
    // The path to the JSON file
    // const jsonFilePath = "../content.json";
    const jsonFilePath = "../" + getQueryParam('file');

    if (!jsonFilePath) {
        document.getElementById('content').textContent = "Error: No JSON file specified.";
        return;
    }

    // Fetch the JSON file
    fetch(jsonFilePath)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Error loading JSON file: ${response.statusText}`);
            }
            return response.json();
        })
        .then(data => {
            const courseTitle = data?.course?.courseTitle;
            const website = data?.college?.website;

            // set the page content
            if (courseTitle) {
                const titleElement = document.getElementById("course-title");
                titleElement.textContent = courseTitle;
            } else {
                console.error("Course title not found in JSON.");
            }
            const term = data?.course?.section?.term;
            const termElement = document.getElementById("term");
            termElement.textContent = term;

            const sched = document.getElementById("schedule");
            sched.textContent = data?.course?.section?.schedule?.day + " " + data?.course?.section?.schedule?.time;

            const loc = document.getElementById("location");
            loc.textContent = data?.course?.section?.schedule?.location;
            const courseNumber = data?.course?.courseNumber;
            const courseNum = document.getElementById("course-number");
            courseNum.textContent = courseNumber;
            const { firstName, lastName } = data?.instructor;
            const instructor = document.getElementById("instructor-name");
            instructor.textContent = `${firstName} ${lastName}`;

            const hyflexElement = document.getElementById("hyflex");
            const hyflex = data?.schedule?.hyflex || null;
            if (hyflex) {
                const hyflexPage = data?.canvas?.server
                    + data?.canvas?.coursePath + "/hyflex";
                const hyflexLink = document.createElement("a");
                hyflexLink.href = hyflexPage;
                hyflexLink.textContent = "Hyflex";
                hyflexElement.appendChild(hyflexLink);
                const newTag = document.createElement("span");
                newTag.textContent = " New!";
                newTag.className = "highlight";
                hyflexElement.appendChild(newTag);
            } else {
                hyflexElement.setAttribute("hidden", true);
            }

            // set the logo image source
            const logoPath = data?.college?.logoPath;
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

            // configure timeline
            initializeTimeline(jsonFilePath);
        })
        .catch(error => {
            console.error("Failed to load or parse JSON:", error);
        });
});
