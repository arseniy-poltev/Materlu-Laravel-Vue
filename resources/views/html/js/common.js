
let Winlocation = window.location.pathname;

if(Winlocation.match("index.html")){

var slideIndex = 0;
showSlides();

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var slides1 = document.getElementsByClassName("mySlides2");
  var dots = document.getElementsByClassName("dot");
  var dots1 = document.getElementsByClassName("dot1");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
    slides1[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) { slideIndex = 1 }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
    dots1[i].className = dots1[i].className.replace(" active1", "");
  }
  slides[slideIndex - 1].style.display = "block";
  slides1[slideIndex - 1].style.display = "block";
  dots[slideIndex - 1].className += " active";
  dots1[slideIndex - 1].className += " active1";
  var timer = setTimeout(showSlides, 10000); // Change image every 10 seconds

}




let countryImg = document.querySelector("#countryImg");
let selectLanguage = document.querySelector("#selectLanguage");
let drop = document.querySelector("#language");
let dropList = document.querySelector("#dropdown");
let dropItems = document.querySelectorAll(".foot");

let headerLanguage = document.querySelector("#headerLanguage");
let dropItems3 = document.querySelectorAll(".l1");
let countryBox2 = document.querySelector("#countryBox2");


for (let i = 0; i < dropItems3.length; i++) {
  dropItems3[i].onclick = function () {

    if (dropItems3[i].checked) {
      headerLanguage.innerHTML = dropItems3[i].nextSibling.parentNode.textContent;
      countryBox2.src = dropItems3[i].previousSibling.previousSibling.getAttribute("src");
      dropList.classList.remove("dropdown");
    }
      
  }
}

drop.onclick = function () {
  dropList.classList.toggle("dropdown");
}


let drop3 = document.querySelector("#language2");
let dropList3 = document.querySelector("#dropdown3");




drop3.onclick = function () {
  dropList3.classList.toggle("dropdown3");
  
}
for (let i = 0; i < dropItems.length; i++) {
  dropItems[i].onclick = function () {

    if (dropItems[i].checked) {
      selectLanguage.innerHTML = dropItems[i].nextSibling.parentNode.textContent;
      countryImg.src = dropItems[i].previousSibling.previousSibling.getAttribute("src");
  
     dropList3.classList.toggle("dropdown3");
    }

  }
}


let drop2 = document.querySelector("#drop2");
let dropList2 = document.querySelector("#dropdown2");
let dropItems2 = document.querySelectorAll(".dropdown_item2");
let countryBox = document.querySelector("#selectCountry");
drop2.onclick = function () {
  dropList2.classList.toggle("dropdown2");
}

for (let i = 0; i < dropItems2.length; i++) {
  dropItems2[i].onclick = function () {
    countryBox.innerHTML = dropItems2[i].textContent;
     dropList2.classList.remove("dropdown2");
  }

}




let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}

/*------------------------------Menu script---------------------------*/

let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}



//Slider About
let aboutSliderPrev = document.querySelector("#aboutSliderPrev");
let aboutSliderNext = document.querySelector("#aboutSliderNext");
let aboutWrapp = document.querySelector("#aboutWrapp");

aboutSliderPrev.onclick = function () {
  aboutWrapp.classList.add("next_about-item");
}

aboutSliderNext.onclick = function () {
  if (aboutWrapp.classList.contains("next_about-item")) {
    aboutWrapp.classList.remove("next_about-item");
  }

}


//Slider Faq
let faqPrevious = document.querySelector("#faqPrevious");
let faqWrapp = document.querySelector("#faqWrapp");
faqPrevious.onclick = function () {
  faqWrapp.classList.add("next_faq-item");

}

let faqNext = document.querySelector("#faqNext");

faqNext.onclick = function () {
  if (faqWrapp.classList.contains("next_faq-item")) {
    faqWrapp.classList.remove("next_faq-item");
  }

}
}
/*------------------------------Story-------------------------------*/


if(Winlocation.match("story.html")){

let countryImg = document.querySelector("#countryImg");
let selectLanguage = document.querySelector("#selectLanguage");
let drop = document.querySelector("#language");
let dropList = document.querySelector("#dropdown");
let dropItems = document.querySelectorAll(".foot");

let headerLanguage = document.querySelector("#headerLanguage");
let dropItems3 = document.querySelectorAll(".l1");
let countryBox2 = document.querySelector("#countryBox2");


for (let i = 0; i < dropItems3.length; i++) {
  dropItems3[i].onclick = function () {

    if (dropItems3[i].checked) {
      headerLanguage.innerHTML = dropItems3[i].nextSibling.parentNode.textContent;
      countryBox2.src = dropItems3[i].previousSibling.previousSibling.getAttribute("src");
      dropList.classList.remove("dropdown");
    }
      
  }
}




let drop3 = document.querySelector("#language2");
let dropList3 = document.querySelector("#dropdown3");




drop3.onclick = function () {
  dropList3.classList.toggle("dropdown3");
  
}
for (let i = 0; i < dropItems.length; i++) {
  dropItems[i].onclick = function () {

    if (dropItems[i].checked) {
      selectLanguage.innerHTML = dropItems[i].nextSibling.parentNode.textContent;
      countryImg.src = dropItems[i].previousSibling.previousSibling.getAttribute("src");
  
     dropList3.classList.toggle("dropdown3");
    }

  }
}







let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}

/*-----------------Menu script---------------------------*/

let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}


}

if(Winlocation.match("character.html")){

    
let drop2 = document.querySelector("#language2");
let dropList2 = document.querySelector("#dropdown3");
let dropList2Items = document.querySelectorAll(".l2");
let countryBox = document.querySelector("#selectLanguage");
let countryImg = document.querySelector("#countryImg");

drop2.onclick = function () {
  dropList2.classList.toggle("dropdown3");
}

for (let i = 0; i < dropList2Items.length; i++) {
  dropList2Items[i].onclick = function () {
    countryBox.innerHTML = dropList2Items[i].nextSibling.parentNode.textContent;
    countryImg.src = dropList2Items[i].previousSibling.previousSibling.getAttribute("src");
    dropList2.classList.toggle("dropdown3");
  }

}


let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}


let drop1 = document.querySelector("#language1");
let dropList1 = document.querySelector("#dropdown2");
let dropList1Items = document.querySelectorAll(".l1");
let charBox = document.querySelector("#charBox");
let charCountry = document.querySelector("#charCountry");

drop1.onclick = function () {
  dropList1.classList.toggle("dropdown1");
}

for (let i = 0; i < dropList1Items.length; i++) {
  dropList1Items[i].onclick = function () {
    charBox.innerHTML = dropList1Items[i].nextSibling.parentNode.textContent;
    charCountry.src = dropList1Items[i].previousSibling.previousSibling.getAttribute("src");
    dropList1.classList.remove("dropdown1");
  }
}




/*---------------------Menu script-------------------------*/
let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}


let apButton = document.querySelector("#apearence");
let apBox = document.querySelector("#apBox");
let main = document.querySelector("main");
/*---------------------------------------------rendering second page-------------------------------------*/
apButton.onclick = function renderap() {
  apBox.remove();
  let apBox2 = document.createElement("div");
  apBox2.classList.add("apearence_box2");
  main.appendChild(apBox2);

  let secondForm = document.createElement("form");
  secondForm.classList.add("character_name");
  apBox2.appendChild(secondForm);

  let photoWrapper = document.createElement("div");
  photoWrapper.classList.add("photo_box");
  apBox2.appendChild(photoWrapper);

  let girlPhoto = document.createElement("img");
  girlPhoto.classList.add("girl_photo");
  girlPhoto.src = "images/characterPage/girl.png";
  photoWrapper.appendChild(girlPhoto);

  let apBox2Title = document.createElement("div");
  apBox2Title.classList.add("apBox2_title");
  secondForm.appendChild(apBox2Title);

  let previousArrow = document.createElement("img");
  previousArrow.src = "images/characterPage/arrow-point-to-right_blue_copy.svg";
  previousArrow.classList.add("arrow");
  apBox2Title.appendChild(previousArrow);

  let apBox2TitleText = document.createElement("p");
  apBox2TitleText.innerHTML = "Hair";
  apBox2Title.classList.add("ap_box2-title");
  apBox2Title.appendChild(apBox2TitleText);

  let nextArrow = document.createElement("img");
  nextArrow.src = "images/characterPage/arrow-point-to-right_blue.svg";
    nextArrow.classList.add("arrow");
  apBox2Title.appendChild(nextArrow);



  let settingsBox1 = document.createElement("div");
  settingsBox1.classList.add("hair_sett");
  secondForm.appendChild(settingsBox1);

  let hairColor = document.createElement("div");
  hairColor.classList.add("hair_color");
  let hairType = document.createElement("div");
  hairType.classList.add("hair_type");
  hairType.classList.add("active_settings");
  let hairColorText = document.createElement("p");
  hairColorText.innerHTML = "Color";
  let hairTypeText = document.createElement("p");
  hairTypeText.innerHTML = "Hair Style";
  settingsBox1.appendChild(hairColor);
  settingsBox1.appendChild(hairType);
  hairColor.appendChild(hairColorText);
  hairType.appendChild(hairTypeText);




  let colorBox = document.createElement("div");
  colorBox.classList.add("color_box");
  secondForm.appendChild(colorBox);

  for (let i = 0; i < 6; i++) {
    let colorItem = document.createElement("div");
    let className = "color_item" + i;
    colorItem.classList.add(className);
    colorItem.classList.add("color_item");
    colorBox.appendChild(colorItem);
  }

  let colorItems = document.querySelectorAll(".color_item");
  for (let i = 0; i < colorItems.length; i++) {
    colorItems[i].onclick = function () {
      for (let j = 0; j < colorItems.length; j++) {

        colorItems[j].classList.remove("active_color");

      }
      colorItems[i].classList.toggle("active_color");
    }
  }

  let arrowsBox = document.createElement("div");
  arrowsBox.classList.add("arrow_box");
  secondForm.appendChild(arrowsBox);

  let prevArrowBox = document.createElement("div");
  prevArrowBox.classList.add("prev_arrow");
  arrowsBox.appendChild(prevArrowBox);

  let backImg = document.createElement("img");
  backImg.src = "images/characterPage/back-arrow.png";
  prevArrowBox.appendChild(backImg);

  let backText = document.createElement("a");
  backText.href = "character.html";
  backText.classList.add("back_link2")
  backText.innerHTML = "Name";
  prevArrowBox.appendChild(backText);

  let apButton2 = document.createElement("button");
  apButton2.classList.add("ap_button2");
  apButton2.id = "apButton2";
  arrowsBox.appendChild(apButton2);
  apButton2.innerHTML = "Apearence ";

  let rightArrow = document.createElement("img");
  rightArrow.src = "images/characterPage/right-arrow.png";
  rightArrow.classList.add("right_arrow");
  apButton2.appendChild(rightArrow);

  main.classList.add("new_bg");

  let progress = document.querySelector("#progress2");

  if (progress.offsetWidth == 122) {
    progress.classList.add("on_progress2-desktop");
    
  }
  if (progress.offsetWidth == 65) {
    progress.classList.add("on_progress2-mobile");
  }

/*-----------------------------------------rendering third page-------------------------------------------*/
  apButton2.onclick = function renderap3() {
    apBox2.remove();

    let progress3 = document.querySelector("#progress3");
    if (progress3.offsetWidth == 122) {
      progress3.classList.add("on_progress2-desktop");
    }
    if (progress3.offsetWidth == 65) {
      progress3.classList.add("on_progress2-mobile");
    }

    let main3 = document.createElement("div");
    main3.classList.add("apearence");
    main.appendChild(main3);

    let dedicBox = document.createElement("form");
    dedicBox.classList.add("apearence_form2");
    main3.appendChild(dedicBox);

    let dedicAdvice = document.createElement("div");
    dedicAdvice.classList.add("advice_box");
    main3.appendChild(dedicAdvice);

    let dedicTitle = document.createElement("div");
    dedicTitle.classList.add("dedication_title");
    dedicBox.appendChild(dedicTitle);

    let dedicTitleText = document.createElement("h3");
    dedicTitleText.classList.add("dedication_title-text");
    dedicTitleText.innerHTML = "Write your dedication";
    dedicTitle.appendChild(dedicTitleText);

    let dedicTitleText2 = document.createElement("p");
    dedicTitleText2.classList.add("dedication_title-descriptin");
    dedicTitleText2.innerHTML = "It will appear on the final page of the story";
    dedicTitle.appendChild(dedicTitleText2);

    let dedicInput = document.createElement("textarea");
    dedicInput.classList.add("dedication_input");
    dedicInput.placeholder = "Dear Anna, This is a fairy tale for a special girl like you. We hope you have fantastic adventures surrounded by those who love you most.";
    dedicBox.appendChild(dedicInput);

    dedicInput.onkeydown = function(e){
  if(e.keyCode == 13){
    return false;
  }
}

    let pictureBox = document.createElement("div");
    pictureBox.classList.add("dedication_picture");
    dedicBox.appendChild(pictureBox);

    let pictureTitle = document.createElement("h4");
    pictureTitle.classList.add("picture_title");
    pictureTitle.innerHTML = "Do you want to add a picture?";
    pictureBox.appendChild(pictureTitle);

    let pictureDescr = document.createElement("p");
    pictureDescr.classList.add("picture_descr");
    pictureDescr.innerHTML = "The picture will be shown on the dedicatory page.";
    pictureBox.appendChild(pictureDescr);

    let addPicture = document.createElement("div");
    addPicture.classList.add("add_picture");
    pictureBox.appendChild(addPicture);

    let pictureImg = document.createElement("img");
    pictureImg.classList.add("picture_image");
    pictureImg.src = "images/characterPage/photo.svg";
    addPicture.appendChild(pictureImg);

    let pictureHelp = document.createElement("span");
    pictureHelp.classList.add("picture_help");
    pictureHelp.innerHTML = 'Add Picture';
    addPicture.appendChild(pictureHelp);



    let arrowsBox = document.createElement("div");
    arrowsBox.classList.add("arrow_box");
    dedicBox.appendChild(arrowsBox);

    let prevArrowBox = document.createElement("div");
    prevArrowBox.classList.add("prev_arrow");
    arrowsBox.appendChild(prevArrowBox);

    let backImg = document.createElement("img");
    backImg.src = "images/characterPage/back-arrow.png";
    prevArrowBox.appendChild(backImg);

    let backText = document.createElement("p");
    backText.classList.add("back_link2")
    backText.innerHTML = "Apearence";
    prevArrowBox.appendChild(backText);

    let apButton2 = document.createElement("button");
    apButton2.classList.add("ap_button3");
    apButton2.id = "apButton2";
    arrowsBox.appendChild(apButton2);
    apButton2.innerHTML = "Apearence ";

    let rightArrow = document.createElement("img");
    rightArrow.src = "images/characterPage/right-arrow.png";
    rightArrow.classList.add("right_arrow");
    apButton2.appendChild(rightArrow);



    let adviceText = ["Check your dedication carefully to make sure there are no mistakes.", "Once your order is printed, we cannot change anything.", "We can´t accept any responsibility for any mistakes in the dedication."];
    for (let i = 0; i < 3; i++) {
      let adviceItem = document.createElement("p");
      adviceItem.classList.add("advice_item");
      adviceItem.innerHTML = adviceText[i];
      dedicAdvice.appendChild(adviceItem);
    }

    prevArrowBox.onclick = function () {
      main3.remove();
      renderap();
       if (progress3.offsetWidth == 122) {
      progress3.classList.remove("on_progress2-desktop");
    }
    if (progress3.offsetWidth == 65) {
      progress3.classList.remove("on_progress2-mobile");
    }
    }


/*------------------------------rendering fourth page--------------------------------------*/
    apButton2.onclick = function renderap4() {
      main3.remove();
    let progress5 = document.querySelector("#progress5");
  
      let progress4 = document.querySelector("#progress4");
      if (progress4.offsetWidth == 122) {
        progress4.classList.add("on_progress2-desktop");
         progress5.classList.add("on_progress5-desktop");
      }
      if (progress4.offsetWidth == 65) {
        progress4.classList.add("on_progress2-mobile");
        progress5.classList.add("on_progress5-mobile");
      }

     

      

      let main4 = document.createElement("div");
      main4.classList.add("main4");
      main.appendChild(main4);

      let preview = document.createElement("div");
      preview.classList.add("preview");
      main4.appendChild(preview);

      let previewImg = document.createElement("img");
      previewImg.src = "images/characterPage/preview.png";
      previewImg.classList.add("preview_image");

      preview.appendChild(previewImg);

      let previewDescr = document.createElement("p");
      previewDescr.classList.add("preview_descr");
      previewDescr.innerHTML = "Touch to slide";
      preview.appendChild(previewDescr);

      let arrowsBox = document.createElement("div");
      arrowsBox.classList.add("arrow_box");
      main4.appendChild(arrowsBox);

      let prevArrowBox = document.createElement("div");
      prevArrowBox.classList.add("prev_arrow");
      arrowsBox.appendChild(prevArrowBox);

      let backImg = document.createElement("img");
      backImg.src = "images/characterPage/back-arrow.png";
      prevArrowBox.appendChild(backImg);

      let backText = document.createElement("p");
      backText.classList.add("back_link2")
      backText.innerHTML = "Dedication";
      prevArrowBox.appendChild(backText);

      let apButton2 = document.createElement("button");
      apButton2.classList.add("ap_button3");
      apButton2.id = "apButton4";
      arrowsBox.appendChild(apButton2);
      apButton2.innerHTML = "Add to Cart ";

      let rightArrow = document.createElement("img");
      rightArrow.src = "images/characterPage/right-arrow.png";
      rightArrow.classList.add("right_arrow");
      apButton2.appendChild(rightArrow);

      prevArrowBox.onclick = function(){
        main4.remove();
        renderap3();
      if (progress4.offsetWidth == 122) {
        progress4.classList.remove("on_progress2-desktop");
         progress5.classList.remove("on_progress5-desktop");
      }
      if (progress4.offsetWidth == 65) {
        progress4.classList.remove("on_progress2-mobile");
        progress5.classList.remove("on_progress5-mobile");
      }

      }

    }
  }
}

/*--------------------------------------inputs------------*/
let charName = document.querySelector("#charName");
charName.onkeydown = function(e){
  if(e.keyCode == 13){
    return false;
  }
}

}

if(Winlocation.match("payment.html")){
/*-------------------------------Menu-----------------------------*/
let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}


/*-------------------------Dropdowns--------------------------*/
let drop2 = document.querySelector("#language2");
let dropList2 = document.querySelector("#dropdown3");
let dropList2Items = document.querySelectorAll(".l2");
let countryBox = document.querySelector("#selectLanguage");
let countryImg = document.querySelector("#countryImg");

drop2.onclick = function () {
  dropList2.classList.toggle("dropdown3");
}

for (let i = 0; i < dropList2Items.length; i++) {
  dropList2Items[i].onclick = function () {
    countryBox.innerHTML = dropList2Items[i].nextSibling.parentNode.textContent;
    countryImg.src = dropList2Items[i].previousSibling.previousSibling.getAttribute("src");
    dropList2.classList.toggle("dropdown3");
  }

}


let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}


/*-----------------------------------Country dropdown--------------------------------*/

let countryBoxForm = document.querySelector("#drop2");
let dropdown5 = document.querySelector("#dropdown5");

countryBoxForm.onclick = function(){
    dropdown5.classList.toggle("dropdown5");
}

let dropItems5 = document.querySelectorAll(".dropdown_item2");
let countryText = document.querySelector("#selectCountry");
for (let i = 0; i < dropItems5.length; i++) {
  dropItems5[i].onclick = function () {
    countryText.innerHTML = dropItems5[i].textContent;
     dropdown5.classList.remove("dropdown5");
  }

}



let card = document.querySelectorAll(".card_lable");
let cardBox = document.querySelectorAll(".card_method");
for(let i=0; i<card.length;i++){
    card[i].onclick = function(){
        for(let j=0;j<card.length;j++){
            if(cardBox[j].classList.contains("active")){
                cardBox[j].classList.remove("active");
            }
        }
        cardBox[i].classList.add("active");
    }
}


let inputArr = document.querySelectorAll("input");

for(let i=0;i<inputArr.length;i++){

    inputArr[i].onkeydown = function(e){
  if(e.keyCode == 13){
    return false;
  }
}
}
}

if(Winlocation.match("card.html")){
/*-------------------------------Menu-----------------------------*/
let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}

/*-------------------------Dropdowns--------------------------*/
let drop2 = document.querySelector("#language2");
let dropList2 = document.querySelector("#dropdown3");
let dropList2Items = document.querySelectorAll(".l2");
let countryBox = document.querySelector("#selectLanguage");
let countryImg = document.querySelector("#countryImg");

drop2.onclick = function () {
  dropList2.classList.toggle("dropdown3");
}

for (let i = 0; i < dropList2Items.length; i++) {
  dropList2Items[i].onclick = function () {
    countryBox.innerHTML = dropList2Items[i].nextSibling.parentNode.textContent;
    countryImg.src = dropList2Items[i].previousSibling.previousSibling.getAttribute("src");
    dropList2.classList.toggle("dropdown3");
  }

}


let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}


}

if(Winlocation.match("basket.html")){


/*-------------------------Dropdowns--------------------------*/
let drop2 = document.querySelector("#language2");
let dropList2 = document.querySelector("#dropdown3");
let dropList2Items = document.querySelectorAll(".l2");
let countryBox = document.querySelector("#selectLanguage");
let countryImg = document.querySelector("#countryImg");

drop2.onclick = function () {
  dropList2.classList.toggle("dropdown3");
}

for (let i = 0; i < dropList2Items.length; i++) {
  dropList2Items[i].onclick = function () {
    countryBox.innerHTML = dropList2Items[i].nextSibling.parentNode.textContent;
    countryImg.src = dropList2Items[i].previousSibling.previousSibling.getAttribute("src");
    dropList2.classList.toggle("dropdown3");
  }

}


let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}


/*-------------------------------Menu-----------------------------*/
let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}

/*---------------------------Dropdowns---------------*/
let dropdown2 = document.querySelector("#drop2");
let dropdown2List = document.querySelector("#dropdown2");
dropdown2.onclick = function(){
  dropdown2List.classList.toggle("dropdown2");
}

let countryText = document.querySelector("#selectCountry");
let dropdown2ListItems = document.querySelectorAll(".dropdown_inner_item2-text");
for (let i=0;i<dropList2Items.length;i++){
  dropdown2ListItems[i].onclick = function(){
    countryText.innerHTML =  dropdown2ListItems[i].textContent;

  }
}

/*---------------------------------*/
let drop1 = document.querySelector("#dropDown1");
let drop1List = document.querySelector("#dropdown0");
let drop1ListItems = document.querySelectorAll(".dropdown_item5");
let drop1TextBox = document.querySelector("#currency1");
console.log(drop1ListItems);

drop1.onclick = function(){
  drop1List.classList.toggle("dropdown0");
}

for(let i=0; i<drop1ListItems.length;i++){
drop1ListItems[i].onclick = function(){
  drop1TextBox.innerHTML = drop1ListItems[i].textContent;
}
}



/*----------------delete----------------------*/
let firstDelete = document.querySelector("#firstDelete");
let firstItem = document.querySelector("#firstItem");

firstDelete.onclick =function(){
firstItem.style.display ="none";
}

let secondDelete = document.querySelector("#secondDelete");
let secondItem = document.querySelector("#secondItem");

secondDelete.onclick = function(){
  secondItem.style.display = "none";
}
}

if(Winlocation.match("faq.html")){
/*-------------------------------Menu-----------------------------*/
let menuIcon = document.querySelector("#menuIcon");
let navigation = document.querySelector("#navigation");
let cancelMenu = document.querySelector("#cancelMenu");
menuIcon.onclick = function () {
  navigation.classList.remove("navigation");
  navigation.classList.add("show_menu");
  menuIcon.style.display = "none";
  cancelMenu.style.display = "block";

}
cancelMenu.onclick = function () {
  navigation.classList.remove("show_menu");
  navigation.classList.add("navigation");
  menuIcon.style.display = "block";
  cancelMenu.style.display = "none";

  if (menuIcon.style.display === "block") {
    menuIcon.removeAttribute("style");
  }


}

/*-------------------------Dropdowns--------------------------*/
let drop2 = document.querySelector("#language2");
let dropList2 = document.querySelector("#dropdown3");
let dropList2Items = document.querySelectorAll(".l2");
let countryBox = document.querySelector("#selectLanguage");
let countryImg = document.querySelector("#countryImg");

drop2.onclick = function () {
  dropList2.classList.toggle("dropdown3");
}

for (let i = 0; i < dropList2Items.length; i++) {
  dropList2Items[i].onclick = function () {
    countryBox.innerHTML = dropList2Items[i].nextSibling.parentNode.textContent;
    countryImg.src = dropList2Items[i].previousSibling.previousSibling.getAttribute("src");
    dropList2.classList.toggle("dropdown3");
  }

}


let drop4 = document.querySelector("#dropDown4");
let dropList4 = document.querySelector("#dropdown4");
let currencyBox = document.querySelector("#currency");
let currencyItems = document.querySelectorAll(".l3");
drop4.onclick = function () {
  dropList4.classList.toggle("dropdown4");
}

for (let i = 0; i < currencyItems.length; i++) {
  currencyItems[i].onclick = function () {
    currencyBox.innerHTML = currencyItems[i].nextSibling.parentNode.textContent;
    dropList4.classList.remove("dropdown4");
  }
}



/*------------------------Hover effect----------------------*/

let items = document.querySelectorAll(".faq_item");
let itemText = document.querySelectorAll(".faq_item-title");

for(let i =0; i<items.length;i++){
    items[i].onmouseover = function(){
        itemText[i].style.color = "#028e89";
    }
     items[i].onmouseout = function(){
        itemText[i].style.color = "#0b342e";
    }
}


}