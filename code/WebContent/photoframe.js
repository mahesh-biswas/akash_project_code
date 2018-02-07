//************************************************************************************
// NOTE:-  DO CHANGES WHEN MORE IMAGES OR PHOTOS ARE ADDED IN TO THE PHOTO ALBUM
//         AT THE FOLLOWING 3 PLACES.
//************************************************************************************

var storeNum;
storeNum=imgNum;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// 1. Enter Number of Photos when more number of photos are added.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

var totalNumber_Of_Photos=24;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// 2. When Photos are added.
//Add photo title in the array.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

var PhotoText = new Array(totalNumber_Of_Photos);
PhotoText[0]="Vizag Upper view";
PhotoText[1]="Golconda Fort";
PhotoText[2]="Birla Planetarium";
PhotoText[3]="Birla Mandir";
PhotoText[4]="Mecca Masjid";
PhotoText[5]="Gandipet";
PhotoText[6]="Charminar";
PhotoText[7]="Hussain Sagar";
PhotoText[8]="Qutub Shahi Tombs";
PhotoText[9]="Salarjung Museum";
PhotoText[10]="Ramoji Film City";
PhotoText[11]="Lumbini Park";
PhotoText[12]="Qutub Shahi Tomb";
PhotoText[13]="Gandipet";
PhotoText[14]="Shilaparamam";
PhotoText[15]="Tankbund";
PhotoText[16]="Admn Staff College";
PhotoText[17]="Andhra Pradesh High Court";
PhotoText[18]="Asman Ghar Palace";
PhotoText[19]="Asman Mahal";
PhotoText[20]="Chiran Fort Club";
PhotoText[21]="Directorate of Industries";
PhotoText[22]="Golden Threshold";
PhotoText[23]="Govt Unani Hospital";
var storeImg=new Array(9);
var storeTitleImg=new Array(9);
var startImgId;
var endImgId;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// 3. Whe

// FIRST 8 PHOTOS
if((imgNum == "") || (imgNum < 8)){
   startImgId=0;
   endImgId=7;
}
// NEXT 8 PHOTOS
else if((imgNum >= 8) && (imgNum < 16)){  
   startImgId=8;
   endImgId=15;
}
// FINAL 8 PHOTOS
// THIS IS THE LAST CONDITION FOR 24 PHOTOS
else if((imgNum >= 16) && (imgNum < 24)){  
   startImgId=16;
   endImgId=23;   
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ABOVE CONDITIONS CAN BE INCREASED FOR MORE THAN 24 PHOTOS 
// EXAMPLE FOR 32 PHOTOS, JUST REMOVE THE COMMENTS FROM BELOW.
// else if((imgNum >= 24) && (imgNum < 32)){
//   startImgId=24;
//   endImgId=31;
// }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

//**********************************************************************
// DO NOT CHANGE THE FOLLOWING CODE
//**********************************************************************

loadImg();

// FUNCTION TO LOAD IMAGES
function loadImg(){
    
   // LOOP FOR LOADING THE IMAGES INTO AN ARRAY
      for(l = startImgId;l <= endImgId;l++){
         storeImg[l]=new Image();
         storeTitleImg[l]=new Image();
	     storeImg[l].src="/Images/photogal"+l+".gif";
         storeTitleImg[l].src="/Images/phototitle"+l+".gif";
      }
}

// FUNCTION FOR CHANGING THE NEXT IMAGE 
function changeNext()
{
   if(storeNum == endImgId){
     if(storeNum == totalNumber_Of_Photos-1){ storeNum=0;}
     else{ storeNum=endImgId+1;} 
     window.location.href="PhotoFrame.jsp?imgIndex="+storeNum;
   }
   else { storeNum=storeNum + 1;
     document.Photos.phtitle.src=storeTitleImg[storeNum].src; 
     document.Photos.phimage.src=storeImg[storeNum].src; 
     document.Photos.phimage.alt=PhotoText[storeNum];
   }
}

// FUNCTION FOR CHANGING THE PREVIOUS IMAGE
function changePrev()
{
   if(storeNum == startImgId){ 
      if(storeNum == 0){ storeNum = totalNumber_Of_Photos-1;}
      else { storeNum=startImgId-1;}
      window.location.href="PhotoFrame.jsp?imgIndex="+storeNum;
   }
   else { storeNum=storeNum - 1;
      document.Photos.phtitle.src=storeTitleImg[storeNum].src; 
      document.Photos.phimage.src=storeImg[storeNum].src; 
      document.Photos.phimage.alt=PhotoText[storeNum];
   }
}

// FUNCTION TO SET THE ALT TEXT FOR THE PHOTO
function setText()
{
   document.Photos.phimage.alt=PhotoText[storeNum];
}  

// END OF THE CODE.