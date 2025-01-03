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
        console.log(jsonFileName);
        const response = await fetch(jsonFileName);
        const data = await response.json();

        // Populate table cells with JSON data
        document.getElementById('schedule').textContent = data.course?.schedule.day + " " + data.course?.schedule.time;
        document.getElementById('location').textContent = data.course?.schedule?.section?.location;
        document.getElementById('courseTitle').textContent = data.course?.courseTitle;
        document.getElementById('instructorName').textContent = data.instructor?.firstName + " " + data.instructor?.lastName;
        document.getElementById('instructorEmail').textContent = data.instructor?.email;
    } catch (error) {
        console.error('Error loading table data:', error);
    }
}
