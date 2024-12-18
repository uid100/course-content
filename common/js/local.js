document.addEventListener("DOMContentLoaded", () => {
    console.log("DOM content loaded.");
    // The path to the JSON file
    const jsonFilePath = "../content.json";

    // Fetch the JSON file
    fetch(jsonFilePath)
        .then(response => {
            if (!response.ok) {
                throw new Error(`Error loading JSON file: ${response.statusText}`);
            }
            console.log("JSON file loaded successfully.");
            return response.json();
        })
        .then(data => {
            // Extract the logo path from the JSON
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
        })
        .catch(error => {
            console.error("Failed to load or parse JSON:", error);
        });
});
