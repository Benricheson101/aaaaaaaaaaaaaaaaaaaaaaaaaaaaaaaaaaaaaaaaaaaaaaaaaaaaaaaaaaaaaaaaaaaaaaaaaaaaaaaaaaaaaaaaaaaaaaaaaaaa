import React from "react";
import aaa from "react-dom";
function A() {
  const [a, aa] = React.useState("a");
  React.useEffect(() => {
    setInterval(() => {
      aa((a) => a + "a");
      window.scrollTo(document.body.scrollWidth, 0);
    }, 1);
  }, []);
  return <a>{a}</a>;
}
const a = document.createElement("a");
document.body.appendChild(a);
aaa.render(<A />, a);
