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
            const response = await fetch(filePath);
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
        const response = await fetch('content.json');
        const data = await response.json();

        // Populate table cells with JSON data
        document.getElementById('schedule').textContent = data.schedule;
        document.getElementById('location').textContent = data.location;
        document.getElementById('courseTitle').textContent = data.courseTitle;
        document.getElementById('instructorName').textContent = data.instructorName;
        document.getElementById('instructorEmail').textContent = data.instructorEmail;
    } catch (error) {
        console.error('Error loading table data:', error);
    }
}
