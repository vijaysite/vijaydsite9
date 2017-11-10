<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
  
  
  <style type="text/css">
  
  body
  {
 /* background-color: tomato;*/
  
    }
    .button{
      background: #168afa;
        background-color: rgb(22, 138, 250);
        background-image: none;
        background-repeat: repeat;
        background-attachment: scroll;
        background-clip: border-box;
        background-origin: padding-box;
        background-position-x: 0%;
        background-position-y: 0%;
        background-size: auto auto;
    color: #fff;
}
.button {
    height: 33px;
    line-height: 30px;
    padding: 0 16px;
}
button,input {
    white-space: nowrap;
    cursor: pointer;
    height: 38px;
    line-height: 36px;
    padding: 0 22px;
    border-radius: 4px;
    display: inline-block;
    transition: .2s;
    text-align: center;
    border: 1px solid rgba(22,138,250,0.5);
    background: rgba(22,138,250,0.05);
    color: #168afa;
}
button {
    width: auto;
}


  </style>
</head>
<body>


  <input type="tel" placeholder="Enter Amount" id="amount-field">
  <input type="text" placeholder="Enter Invoice" id="invoice-field">
  <button id="rzp-button1">Pay Now</button>
  <script>

  var minimum_donation_amount = 100; // ₹100

  document.getElementById('rzp-button1').onclick = function(e){
      var rupeeAmount = parseInt(document.getElementById('amount-field').value);
      if (!rupeeAmount || rupeeAmount < minimum_donation_amount) {
        return alert('Please enter valid amount. minimum_donation_amount is ₹ 100')
      }
      var options = {
          "key": "rzp_test_Aff9xUmQO5IYHE",
          "amount": 100*rupeeAmount, // wke amount in paise
          "name": "",
          "description": "Purchase Description",
          "image": "transworld.jpg",
          "handler": function (response){
              alert(response.razorpay_payment_id);
          },
          "prefill": {
              "name": "Vijay Bharkade",
              "email": "vijaybharkade123@gmail.com"
          },
          "notes": {
              "invoice_id": document.getElementById('invoice-field').value
          },
          "theme": {
              "color": "#168afa"
          }
      };
      new Razorpay(options).open();
  }
  </script>
</body>
</html>