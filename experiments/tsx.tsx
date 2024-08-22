import React, { useState } from "react";

const App: React.FC = () => {
  const [name, setName] = useState<string>("");
  const [age, setAge] = useState<number>(25);
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setName(e.target.value);
  };

  const incrementAge = () => {
    setAge(age + 1);
  };

  return (
    <div className="container">
      <h1>Hello, {name || "Guest"}!</h1>
      <p>Age: {age}</p>
      <input
        type="text"
        value={name}
        onChange={handleInputChange}
        placeholder="Enter your name"
      />
      <button onClick={incrementAge}>Increment Age</button>
    </div>
  );
};

export default App;
