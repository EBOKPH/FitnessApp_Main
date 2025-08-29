/*
  Program:  E-commerce API MVP requirements
  Programmer: Kobe Desilva Estabalaya & Jiandre Cezar B. Odono
  Section:  BSCSAN22
  Start Date: July 16 2023
  End Date:   July 17 2023
*/

const User = require("../models/user");
const bcrypt = require("bcrypt");
const auth = require("../auth");

//use to register the user
// use to register the user
module.exports.registerUser = (reqBody) => {
  let newUser = new User({
    firstName: reqBody.firstName,
    lastName: reqBody.lastName,
    email: reqBody.email,
    password: bcrypt.hashSync(reqBody.password, 10),
  });

  return newUser
    .save()
    .then(() => true)
    .catch((error) => {
      console.error("Registration error:", error.message);
      return false;
    });
};

//used to login the user (get access token)
module.exports.loginUser = (reqBody) => {
  console.log("Login attempt for email:", reqBody.email); // log the email
  console.log("Password entered:", reqBody.password); // log the password entered by user

  return User.findOne({ email: reqBody.email }).then((result) => {
    if (result == null) {
      console.log("User not found in database");
      return false;
    } else {
      console.log("Hashed password in DB:", result.password); // log hashed password

      const isPasswordCorrect = bcrypt.compareSync(
        reqBody.password,
        result.password
      );

      console.log("Password match result:", isPasswordCorrect); // log result of bcrypt check

      if (isPasswordCorrect) {
        return { success: true, token: auth.createAccessToken(result) }; // include success: true
      } else {
        return { success: false }; // return structured object for consistency
      }
    }
  });
};

//use to get the all the details of the user
module.exports.getAllUsers = () => {
  return User.find({})
    .select("-password")
    .then((users) => {
      return users;
    })
    .catch((error) => {
      throw new Error(error.message);
    });
};

//use to get a specific user details using ID
module.exports.getProfile = (userData) => {
  const userId = userData.userId;
  return User.findById(userId)
    .select("-password")
    .then((result) => {
      if (!result) {
        throw new Error("User not found.");
      }
      result.password = "";
      return result;
    })
    .catch((error) => {
      throw new Error(error.message);
    });
};

//use for the checkout function
module.exports.createOrder = (token, orderData) => {
  const userData = auth.decode(token);
  if (!userData) {
    return Promise.resolve(false);
  }
  if (userData.isAdmin) {
    return Promise.resolve(false);
  }
  const newOrder = {
    products: orderData.products.map((product) => ({
      productId: product.productId,
      productName: product.productName,
      productDescription: product.productDescription,
      price: product.price,
      quantity: product.quantity,
      totalAmount: product.price * product.quantity,
    })),
  };

  // Add a missing closing curly brace for the createOrder function
  return User.findByIdAndUpdate(
    userData.id,
    {
      $push: { orderedProducts: newOrder },
    },
    { new: true }
  );
};

//use to show the current user order in postman
module.exports.getUserOrders = (userId) => {
  return User.findById(userId, "orderedProducts")
    .then((user) => {
      if (!user) {
        return null;
      }
      return user.orderedProducts.map((order) => {
        return {
          userId: user._id,
          orders: order.products.map((product) => {
            return {
              productId: product.productId,
              productName: product.productName,
              quantity: product.quantity,
            };
          }),
          totalAmount: Array.from(
            order.products.map((product) => {
              console.log(product);
              return product.price * product.quantity;
            })
          ).reduce((partialSum, a) => partialSum + a, 0),
        };
      });
    })
    .catch((error) => {
      throw new Error(error.message);
    });
};

//use to show all orders in postman
module.exports.getAllOrders = () => {
  return User.find({}, "orderedProducts")
    .then((users) => {
      const allOrders = users.reduce((orders, user) => {
        return orders.concat(user.orderedProducts);
      }, []);
      return allOrders.map((order) => {
        return {
          userId: order._id,
          orders: order.products.map((product) => {
            return {
              productId: product.productId,
              productName: product.productName,
              quantity: product.quantity,
            };
          }),
          totalAmount: Array.from(
            order.products.map((product) => {
              console.log(product);
              return product.price * product.quantity;
            })
          ).reduce((partialSum, a) => partialSum + a, 0),
        };
      });
    })
    .catch((error) => {
      throw new Error(error.message);
    });
};

// Update additional data for a user
module.exports.updateUserData = (userId, data) => {
  // Only allow specific fields
  const updateFields = {
    height: data.height,
    weight: data.weight,
    preferences: data.preferences,
  };

  return User.findByIdAndUpdate(userId, updateFields, { new: true })
    .select("-password") // don't return password
    .then((user) => {
      if (!user) throw new Error("User not found");
      return user;
    });
};

//use to set a non admin user into admin
module.exports.setUserAsAdmin = (userId) => {
  return User.findByIdAndUpdate(userId, { isAdmin: true }, { new: true }).then(
    (user) => {
      return user;
    }
  );
};
