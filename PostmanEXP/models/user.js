/*
  Program:  E-commerce API MVP requirements
  Programmer: Kobe Desilva Estabalaya & Jiandre Cezar B. Odono
  Section:  BSCSAN22
  Start Date: July 16 2023
  End Date:   July 17 2023
*/

const mongoose = require("mongoose");

const userSchema = new mongoose.Schema({
  email: {
    type: String,
    required: [true, "Email is required"],
  },
  password: {
    type: String,
    required: [true, "Password is required"],
  },
  firstName: {
    type: String,
    required: [true, "First Name is required"],
  },
  lastName: {
    type: String,
    required: [true, "Last Name is required"],
  },
  isAdmin: {
    type: Boolean,
    default: false,
  },

  orderedProducts: [
    {
      products: [
        {
          productId: {
            type: mongoose.Schema.Types.ObjectId,
            ref: "Product",
            required: [true, "Product Id is required"],
          },
          productName: {
            type: String,
            required: [true, "Product Name is required"],
          },
          productDescription: {
            type: String,
            required: [true, "Description is required"],
          },
          quantity: {
            type: Number,
            required: [true, "Quantity is required"],
          },
          price: {
            type: Number,
            required: [true, "Price is required"],
          },
          totalAmount: {
            type: Number,
            required: [true, "Total amount is required"],
          },
        },
      ],
    },
  ],

  purchasedOn: {
    type: Date,
    default: Date.now,
  },

  // 👇 New fields for user data
  height: {
    type: Number,
  },
  weight: {
    type: Number,
  },
  preferences: {
    type: [String], // example: ["cardio", "strength"]
  },
});

module.exports = mongoose.model("User", userSchema);
