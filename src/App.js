import React from "react";
import logo from "../logo.png";

export default function App() {
  const containerStyle = {
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    height: "100vh",
    margin: 0,
    backgroundColor: "#0000FF",
    color: "#FFFFFF",
    flexDirection: "column",
    position: "relative"
  };
  const titleStyle = { fontSize: 48, letterSpacing: 6 };
  const aboutStyle = { position: "absolute", top: 10, right: 10, color: "#FFFFFF", fontSize: 18, textDecoration: "none" };

  return (
    <div style={containerStyle}>
      <a href="about:blank" style={aboutStyle}>About</a>
      <img src={logo} alt="logo" style={{ width: 260, marginBottom: 20 }} />
      <h1 style={titleStyle}>DEVS PLAYGROUND</h1>
    </div>
  );
}