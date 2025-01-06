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
    const jsonFilePath = getQueryParam('path');
    const jsonFile = "../edu/" + jsonFilePath + "content.json";
    console.log(jsonFile);

    if (!jsonFile) {
        document.getElementById('content').textContent = "Error: No JSON file specified.";
        return;
    }

    try {
        const response = await fetch(jsonFile);
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
    const jsonFilePath = "../edu/" + getQueryParam('path');
    const jsonFile = jsonFilePath + "content.json";
    if (!jsonFile) {
        document.getElementById('content').textContent = "Error: No JSON file specified.";
        return;
    }

    // Fetch the JSON file
    fetch(jsonFile)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Error loading JSON file: ${response.statusText}`);
            }
            return response.json();
        })
        .then(data => {
            const courseTitle = data?.course?.courseTitle;
            const coverImagePath = data?.course?.coverImage;
            const website = data?.college?.website;
            const term = data?.course?.section?.term;
            const meetingTime = data?.course?.section?.schedule?.day + " " + data?.course?.section?.schedule?.time;
            const meetingLocation = data?.course?.section?.schedule?.location;
            const courseNumber = data?.course?.courseNumber;
            const hyflex = data?.schedule?.hyflex || null;
            const coursePath = data?.canvas?.server + data?.canvas?.coursePath;
            const textbookTitle = data?.course?.textbook?.title;
            const textbookAuthor = data?.course?.textbook?.author;
            const textbookImagePath = data?.course?.textbook?.imagePath;
            const description = data?.course?.description;
            const officeHours = data?.course?.contact?.officeHours?.schedule;
            const officeHoursLink = data?.course?.contact?.officeHours?.zoomLink;
            const discordServer = data?.course?.contact?.discordLink?.label;
            const discordLinkUrl = data?.course?.contact?.discordLink?.url;
            const logoPath = data?.college?.logoPath;
            const { firstName, lastName } = data?.instructor;
            const instructorImagePath = data?.instructor?.imagePath;
            const instructorAbout = data?.instructor?.about;
            const instructorLink = data?.instructor?.url;


            // set the page content
            if (courseTitle) {
                const titleElement = document.getElementById("course-title");
                if (titleElement) { titleElement.textContent = courseTitle; }
            } else {
                console.error("Course title not found in JSON.");
            }

            // set the logo image source
            if (logoPath) {
                // Replace `~` with the base path if necessary
                const relativePath = logoPath.replace(/^~\//, "");

                // Set the src attribute of the image
                const imgElement = document.getElementById("college-logo");
                if (imgElement) { imgElement.src = relativePath; }
            } else {
                console.error("Logo path not found in JSON.");
            }

            // set the website link
            if (website) {
                // Set the href attribute of the link
                const linkElement = document.getElementById("college-link");
                if (linkElement) { linkElement.href = website; }
            } else {
                console.error("Website link not found in JSON.");
            }

            // cover image
            if (coverImagePath) {
                // Replace `~` with the base path if necessary
                const relativePath = coverImagePath.replace(/^~\//, "");

                // Set the src attribute of the image
                const imgElement = document.getElementById("cover-image");
                if (imgElement) { imgElement.src = relativePath; }

                const imgCaption = document.getElementById("cover-caption");
                if (imgCaption) { imgCaption.textContent = courseTitle + " Cover Image"; }
            } else {
                console.error("Cover image path not found in JSON.");
            }

            // configure timeline
            initializeTimeline(jsonFile);

            // course section
            const termElement = document.getElementById("term");
            if (termElement) { termElement.textContent = term; }

            const sched = document.getElementById("schedule");
            if (sched) { sched.textContent = meetingTime; }

            const loc = document.getElementById("location");
            if (loc) { loc.textContent = meetingLocation; }

            const courseNum = document.getElementById("course-number");
            if (courseNum) { courseNum.textContent = courseNumber; }

            // set the hyflex link
            const hyflexElement = document.getElementById("hyflex");
            if (hyflex) {
                const hyflexPage = coursePath + "/hyflex";
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

            // about course
            const courseAbout = document.getElementById("course-about");
            // replace newline with <br>
            const htContent = description.replace(/\n/g, "<br>");
            if (courseAbout) { courseAbout.innerHTML = htContent; }

            // textbook image
            if (textbookImagePath) {
                // Replace `~` with the base path if necessary
                const relativePath = textbookImagePath.replace(/^~\//, "");

                // Set the src attribute of the image
                const imgElement = document.getElementById("textbook-image");
                imgElement.src = relativePath;

                const bookTitle = textbookTitle + "<br>" + textbookAuthor;
                const bookElement = document.getElementById("textbook-title");
                bookElement.innerHTML = bookTitle;
            } else {
                console.log("Textbook image path not found in JSON.");
            }

            // instructor name
            const instructor = document.getElementById("instructor-name");
            instructor.textContent = `${firstName} ${lastName}`;
            const aboutInstructor = document.getElementById("instructor-about");
            aboutInstructor.textContent = instructorAbout;
            const instructorUrl = document.getElementById("instructor-link");
            instructorUrl.href = instructorLink;

            // instructor image
            if (instructorImagePath) {
                // Replace `~` with the base path if necessary
                const relativePath = instructorImagePath.replace(/^~\//, "");

                // Set the src attribute of the image
                const imgElement = document.getElementById("instructor-image");
                imgElement.src = relativePath;
            } else {
                console.error("Instructor image path not found in JSON.");
            }

            // office hours
            const officeHoursButton = document.getElementById("office-hours-button");
            officeHoursButton.textContent = officeHours;
            officeHoursButton.href = officeHoursLink;

            // discord link
            const discordLinkButton = document.getElementById("discord-link");
            discordLinkButton.textContent = discordServer;
            discordLinkButton.href = discordLinkUrl;

            // syllabus link
            const syllabusLink = document.getElementById("syllabus-button");
            syllabusLink.href = coursePath + "/assignments/syllabus";

            // modules link
            const modulesLink = document.getElementById("modules-button");
            modulesLink.href = coursePath + "/modules";
        })
        .catch(error => {
            console.error("Failed to load or parse JSON:", error);
        });
});
