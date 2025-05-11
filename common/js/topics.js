document.addEventListener("DOMContentLoaded", () => {
    const params = new URLSearchParams(window.location.search);
    const moduleNum = params.get("module");
    const chapterNum = parseInt(params.get("chapter"));

    if (!moduleNum || isNaN(chapterNum)) {
        alert("Missing or invalid module/chapter parameters.");
        return;
    }

    const jsonPath = `modules/module${moduleNum}.json`;

    fetch(jsonPath)
        .then((response) => response.json())
        .then((data) => {
            const chapter = data.chapters.find((ch) => ch.chapter === chapterNum);
            if (!chapter) {
                throw new Error("Chapter not found");
            }

            // Set header and title
            document.querySelector("#chapterCard .card-header").textContent = chapter.title;
            document.getElementById("chapterTitle").textContent = chapter.title;

            // Set topics
            const topicsList = document.getElementById("topicsList");
            topicsList.innerHTML = "";
            chapter.topics.forEach((topic) => {
                const li = document.createElement("li");
                li.textContent = topic;
                topicsList.appendChild(li);
            });

            // Set image
            document.getElementById("textbookImage").src = chapter.image;
        })
        .catch((err) => {
            console.error(err);
            alert("Failed to load chapter data.");
        });
});
