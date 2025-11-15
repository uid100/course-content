// loader.js : injects header/footer fragments into any page

async function injectFragment(id, url) {
    try {
        const container = document.getElementById(id);
        if (!container) return;

        const response = await fetch(url);
        const html = await response.text();
        container.innerHTML = html;
    } catch (e) {
        console.error("Fragment load error:", url, e);
    }
}

document.addEventListener("DOMContentLoaded", () => {
    injectFragment("shared-header", "/course-content/common/page-header.html");
    injectFragment("shared-footer", "/course-content/common/footer.html");
});
