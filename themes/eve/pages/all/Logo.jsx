import React from "react";

function Logo() {
  return (
    <div className="main-logo">
      <a href="/">
        <img src="/logo-beauty.jpeg" alt="Meha Beauty" />
      </a>
    </div>
  );
}

export default Logo;

export const layout = {
  areaId: "header",
  sortOrder: 5
};
