
var gateway = new braintree.BraintreeGateway({
  accessToken: useYourAccessToken
});

var saleRequest = {
  amount: req.body.amount,
  merchantAccountId: "USD",
  paymentMethodNonce: req.body.nonce,
  deviceData: req.body.device_data,
  orderId: "Mapped to PayPal Invoice Number",
  descriptor: {
    name: "Descriptor displayed in customer CC statements. 22 char max"
  },
  shipping: {
    firstName: "Jen",
    lastName: "Smith",
    company: "Braintree",
    streetAddress: "1 E 1st St",
    extendedAddress: "5th Floor",
    locality: "Bartlett",
    region: "IL",
    postalCode: "60103",
    countryCodeAlpha2: "US"
  },
  options: {
    paypal: {
      customField: "PayPal custom field",
      description: "Description for PayPal email receipt"
    },
    submitForSettlement: true
  }
};

gateway.transaction.sale(saleRequest, function (err, result) {
  if (err) {
    res.send("<h1>Error:  " + err + "</h1>");
  } else if (result.success) {
    res.send("<h1>Success! Transaction ID: " + result.transaction.id + "</h1>");
  } else {
    res.send("<h1>Error:  " + result.message + "</h1>");
  }
});
