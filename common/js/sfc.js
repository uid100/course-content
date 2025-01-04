const contentMapping = {
    courseDescription: "course-description.html",
    prerequisites: "prerequisites.html",
    courseObjectives: "course-objectives.html",
    gettingHelp: "getting-help.html",
    requiredMaterials: "required-materials.html",
    recommendedMaterials: "recommended-materials.html",
    courseExpectations: "course-expectations.html",
    policyAI: "policy-ai.html",
    gradingScale: "grading-scale.html"
};

// Function to extract query parameters
function getQueryParam(param) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(param);
}

async function loadContent() {
    for (const [id, filePath] of Object.entries(contentMapping)) {
        try {
            const jsonFilePath = "../edu/" + getQueryParam('path');
            const response = await fetch(jsonFilePath + filePath);
            if (response.ok) {
                const htmlContent = await response.text();
                document.getElementById(id).innerHTML = htmlContent;
            } else {
                document.getElementById(id).innerHTML = `<p style="color: red;">Failed to load content: ${filePath}</p>`;
            }
        } catch (error) {
            console.error("Error loading content:", error);
            document.getElementById(id).innerHTML = `<p style="color: red;">Error loading content: ${filePath}</p>`;
        }
    }
}

async function loadCourseDetails() {
    try {
        // Fetch the JSON file
        const jsonFilePath = "../edu/" + getQueryParam('path');
        const jsonFileName = jsonFilePath + "content.json";
        const response = await fetch(jsonFileName);
        const data = await response.json();

        document.getElementById('document-title').innerHTML
            = data?.templates?.syllabus?.title;

        // Populate table cells with JSON data
        let cell = document.getElementById('courseTitle');
        let cellContent = cell.innerHTML;
        cellContent += `${data?.course?.section?.courseId} ${data?.course?.courseTitle}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('term');
        cellContent = cell.innerHTML;
        cellContent += `${data?.course?.section?.term}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('schedule');
        cellContent = cell.innerHTML;
        cellContent += `${data?.course?.section?.schedule?.day} ${data.course?.section?.schedule?.time}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('location');
        cellContent = cell.innerHTML;
        cellContent += `${data?.course?.section?.schedule?.location}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('units');
        cellContent = cell.innerHTML;
        cellContent += `${data?.course?.units}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('instructorName');
        cellContent = cell.innerHTML;
        cellContent += `${data?.instructor?.firstName} ${data?.instructor?.lastName}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('instructorEmail');
        cellContent = cell.innerHTML;
        cellContent += `${data?.instructor?.email}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('officeLocation');
        cellContent = cell.innerHTML;
        cellContent += `${course?.contact?.officeHours?.location}`
            + ` ${course?.contact?.officeHours?.zoomLink}`;
        cell.innerHTML = cellContent;

        cell = document.getElementById('officeHours');
        cellContent = cell.innerHTML;
        cellContent += `${course?.contact?.officeHours?.schedule}`;
        cell.innerHTML = cellContent;
    } catch (error) {
        console.error('Error loading table data:', error);
    }
}
