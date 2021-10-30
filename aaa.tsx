import React from "react";
import aaa from "react-dom";
function A(): React.ReactNode {
  const [a, aa] = React.useState("a");
  React.useEffect((): void => {
    setInterval((): void => {
      aa((a: a): a => a + "a");
      window.scrollTo(document.body.scrollWidth, 0);
    }, 1);
  }, []);
  return <a>{a}</a>;
}
const a = document.createElement("a");
document.body.appendChild(a);
aaa.render(<A />, a);
