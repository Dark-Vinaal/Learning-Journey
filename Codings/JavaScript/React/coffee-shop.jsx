import React, { useState } from "react";

const App = () => {
  const menu = [
    { name: "Espresso ", price: 3 },
    { name: "Cappuccino ", price: 3.5 },
    { name: "Americano ", price: 5 },
    { name: "Latte ", price: 4.4 },
    { name: "Mocha ", price: 4 },
  ];

  const [order, setOrder] = useState([]);

  return (
    <div>
      <h1> Coffee Shop </h1>
      <h2> Menu </h2>
      {menu.map((coffee) => (
        <button onClick={() => setOrder([...order, coffee])}>
          {coffee.name} - ${coffee.price}
        </button>
      ))}
      <h2> Order </h2>
      {order.length ? (
        <>
          {order.map((coffee) => (
            <p>
              {" "}
              {coffee.name} - ${coffee.price}{" "}
            </p>
          ))}
          <p>
            Total : ${order.reduce((sum, coffee) => sum + coffee.price, 0)}{" "}
          </p>
          <button onClick={() => setOrder([])}>Clear</button>
        </>
      ) : (
        <p> Your cart is empty </p>
      )}
    </div>
  );
};

export default App;
