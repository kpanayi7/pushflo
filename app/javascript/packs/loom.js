import { isSupported, setup } from "@loomhq/record-sdk";
import { oembed } from "@loomhq/loom-embed";

const PUBLIC_APP_ID = "75a529c9-0687-4cf6-b309-5cfbdc81599f";
const BUTTON_ID = "loom-record-sdk-button";

function insertEmbedPlayer(html) {
  const target = document.getElementById("target");

  if (target) {
    target.innerHTML = html;
  }
}

async function init() {
  const { supported, error } = await isSupported();

  if (!supported) {
    console.warn(`Error setting up Loom: ${error}`);
    return;
  }

  const root = document.getElementById("app");

  if (!root) {
    return;
  }

  root.innerHTML = `<button id="${BUTTON_ID}">Record</button>`;

  const button = document.getElementById(BUTTON_ID);

  if (!button) {
    return;
  }

  const { configureButton } = await setup({
    publicAppId: PUBLIC_APP_ID,
  });

  const sdkButton = configureButton({ element: button });

  sdkButton.on("insert-click", async (video) => {
    const { html } = await oembed(video.sharedUrl, { width: 400 });
    insertEmbedPlayer(html);
  });
}

init();
