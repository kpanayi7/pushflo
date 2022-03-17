export const typed = () => {
  if ($(".headingTyped").length) {
    var typed = new Typed('.headingTyped', {
      strings: ["Notion", "Excel", "Outlook","Xero","Ableton","Premiere","Gsheets", "Slack", "Dext", "Datamolino", "Notion", "Photoshop", "Snagit", "Gmail", "VS Code", "Asana"],
      typeSpeed: 40,
      backSpeed: 40,
      backDelay: 1000,
      loop: true
    });
  }
}
