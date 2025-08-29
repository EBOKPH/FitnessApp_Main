/*
  Program:  response Database
  Programmer: Kobe Desilva Estabalaya
  Start Date: August 12, 2025
*/
const userRoutes = require("./routes/userRoutes");
const productRoutes = require("./routes/productRoutes");

const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");

const app = express();

app.use(express.json());
mongoose.connect(
  "mongodb+srv://kobeestabalaya_db_user:Bananalong17@cluster0.k9zknnw.mongodb.net/ecommerceDB?retryWrites=true&w=majority&appName=Cluster0",
  {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  }
);

mongoose.connection.once("open", () =>
  console.log("Now connected to MongoDB Atlas.")
);

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/users", userRoutes);
app.use("/products", productRoutes);

app.listen(process.env.PORT || 4000, () => {
  console.log(`API is now online on port ${process.env.PORT || 4000}`);
});
