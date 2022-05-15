const express = require("express");

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Initialize DB
require('./initDB')();

const ProductRoute = require('./Routes/Product.route');
app.use('/products', ProductRoute);


app.get("/", (req, res) => {
  return res.status(200).json({
    status: 200,
    message: "Hit!!!!!!!!!!!!!",
  });
});

app.listen(8080, () => console.log("Server running port 8080"));
