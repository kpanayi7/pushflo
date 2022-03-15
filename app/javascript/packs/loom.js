import { isSupported, setup } from "@loomhq/record-sdk";
import { oembed } from "@loomhq/loom-embed";

const PUBLIC_APP_ID = "75a529c9-0687-4cf6-b309-5cfbdc81599f";
const BUTTON_ID = "loom-record-sdk-button";

export function loomUpload() {

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

    const root = document.getElementById("loomrecord");

    if (!root) {
      return;
    }

    root.innerHTML = `<button class="button-4" id="${BUTTON_ID}"><img src="https://res.cloudinary.com/dza6mn30y/image/upload/c_scale,h_28/v1646954811/Pushflo/Images/icons/Loom_bm_wr6oyl.png">  Record a Loom</button>`;

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
}
