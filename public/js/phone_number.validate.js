 var input = document.querySelector("#phone"),
     errorMsg = document.querySelector("#error-msg"),
     validMsg = document.querySelector("#valid-msg");
 var errorMap = [
     "Invalid number",
     "Invalid country code",
     "Too short",
     "Too long",
     "Invalid number"
 ];
 var iti = null;
 (function() {
     if (!input) {
         return;
     }
     iti = intlTelInput(input, {
         initialCountry: "auto",
         geoIpLookup: function(callback) {
             $.get(
                 "https://ipinfo.io/json?token=ec390afea81cee",
                 function() {},
                 "jsonp"
             ).always(function(resp) {
                 console.log(resp);
                 var countryCode = resp && resp.country ? resp.country : "";
                 callback(countryCode);
             });
         },
         preferredCountries: ["ES", "CN", "US"],
         utilsScript: "/js/intel_phone/utils.js?1549804213570"
     });
     input.addEventListener("keyup", function() {
         reset();
         if (input.value.trim()) {
             if (iti.isValidNumber()) {
                 validMsg.classList.remove("hide");
             } else {
                 input.classList.add("error");
                 var errorCode = iti.getValidationError();
                 errorMsg.innerHTML = errorMap[errorCode];
                 errorMsg.classList.remove("hide");
             }
         }
     });
 })();


 function reset() {
     input.classList.remove("error");
     errorMsg.innerHTML = "";
     errorMsg.classList.add("hide");
     validMsg.classList.add("hide");
 }



 function formatPhoneNumber(number) {
     //remove all space in it
     return number.replace(/\s+/g, "");
 }

 $("#checkout-form").on('submit', function() {

     if (!iti.isValidNumber()) {
         var errorCode = iti.getValidationError();
         errorMsg.innerHTML = errorMap[errorCode];
         errorMsg.classList.remove("hide");
         validMsg.classList.add("hide");
         return false;
     }
     var phoneNumber = formatPhoneNumber(iti.getNumber());
     $("#delivery_phone").val(phoneNumber);
     //  alert(phoneNumber);
     return true;
 });