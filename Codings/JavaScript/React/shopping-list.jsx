import { useState } from "react";

function App() {
  const [item, setItem] = useState("");
  const [list, setList] = useState([]);

  return (
    <div>
      <h2>Shopping List</h2>

      <input onChange={(e) => setItem(e.target.value)} />

      <button onClick={() => setList([...list, item])}>Add</button>

      {list.map((x, i) => (
        <p key={i}>
          {x}
          <button onClick={() => setList(list.filter((_, j) => i !== j))}>
            Delete
          </button>
        </p>
      ))}
    </div>
  );
}

export default App;
