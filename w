<style>
    body {
    width: 550px;
   }
  .tabs {
    font-size: 0;
  }

  .tabs>input[type="radio"] {
    display: none;
  }

  .tabs>div {
    /* hide content by default */
    display: none;
    border: 1px solid #e0e0e0;
    padding: 10px 15px;
    font-size: 16px;
  }

  
  /* Display content associated with the selected radio button (input type="radio") */
  #tab-btn-1:checked~#content-1,
  #tab-btn-2:checked~#content-2,
  #tab-btn-3:checked~#content-3,
  #tab-btn-4:checked~#content-4,
  #tab-btn-5:checked~#content-5 {
    display: block;
  }

  .tabs>label {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    user-select: none;
    background-color: #f5f5f5;
    border: 1px solid #e0e0e0;
    padding: 2px 8px;
    font-size: 16px;
    line-height: 1.5;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out;
    cursor: pointer;
    position: relative;
    top: 1px;
  }

  .tabs>label:not(:first-of-type) {
    border-left: none;
  }

  .tabs>input[type="radio"]:checked+label {
    background-color: #fff;
    border-bottom: 1px solid #fff;
  }
</style>






<div class="tabs">
  <input type="radio" name="tab-btn" id="tab-btn-1" value="" checked>
<label for="tab-btn-1">Red <span id="red-score">(0)</span></label>


  <input type="radio" name="tab-btn" id="tab-btn-2" value="">
  <label for="tab-btn-2">Blue <span id="blue-score">(0)</span></label>

  <input type="radio" name="tab-btn" id="tab-btn-3" value="">
  <label for="tab-btn-3">Green <span id="green-score">(0)</span></label>

  <input type="radio" name="tab-btn" id="tab-btn-4" value="">
  <label for="tab-btn-4">Yellow <span id="yellow-score">(0)</span></label>

  <input type="radio" name="tab-btn" id="tab-btn-5" value="">
  <label for="tab-btn-5">Black <span id="black-score">(0)</span></label>





  <div id="content-1">
      

    <fieldset>
        <legend>TICKET TO RIDE</legend>
        <label for="num11">Train 1 </label>
        <input id="num11"/> (х1)
        <p></p>
        <label for="num21">Train 2 </label>
        <input id="num21"/> (х2)
        <p></p>
        <label for="num31">Train 3 </label>
        <input id="num31"/> (х4)
        <p></p>
        <label for="num41">Train 4 </label>
        <input id="num41"/> (х7)
        <p></p>
        <label for="num61">Train 6 </label>
        <input id="num61"/> (х15)
        <p></p>
        <label for="num81">Train 8 </label>
        <input id="num81"/> (х21)
        <p></p>
        <fieldset>
        <legend>Destination Ticket [Bonus/Penalty] </legend>
        <label for="stan1"  > Stations </label> 
        <input id="stan1"/> on the playing field

        <p></p>
        <label for="pereg11">Points  1</label>
        <input id="pereg11" style="width: 50px"/>
        
        <label for="pereg21">Points  2</label>
        <input id="pereg21" style="width: 50px"/>
        
        <label for="pereg31">Points  3</label>
        <input id="pereg31" style="width: 50px"/>

        <p></p> 
        <label for="pereg41">Points  4</label>
        <input id="pereg41" style="width: 50px"/>
        
        <label for="pereg51">Points  5</label>
        <input id="pereg51" style="width: 50px"/>
        
        <label for="pereg61">Points  6</label>
        <input id="pereg61" style="width: 50px"/>
        
        <p></p>
        <label for="pereg71">Points  7</label>
        <input id="pereg71" style="width: 50px"/>
        
        <label for="pereg81">Points  8</label>
        <input id="pereg81" style="width: 50px"/>
        
        <label for="pereg91">Points  9</label>
        <input id="pereg91" style="width: 50px"/>

        <p></p>
        <input type="checkbox" id="one1" onchange="fun11()"> Express Bonus

        </fieldset>
        </fieldset>
        <p></p>




        
        <button style="
        padding-left: 40px;
        padding-right: 40px;
        padding-top: 20px;
        padding-bottom: 20px;
        color: rgb(5, 0, 0);
        background-color: rgb(248, 68, 36);
        border-radius: 15px;" onclick="func1()"><b>   Calculating Scores   </b> </button>
        
        
        <script>
          dl_marsh1 = 0
            function fun11() {
var chbox;
chbox=document.getElementById('one1');
  if (chbox.checked) {
    dl_marsh1 = 10;
  }
  else {
    dl_marsh1 = 0;
  }
}




            function func1(){
                  var audio = new Audio();
                  audio.src = 'https://zvukipro.com/uploads/files/2021-04/1617869497_87223b11f59f15c.mp3';
                  audio.autoplay = true;
                  var kol11 = Number(document.getElementById("num11").value)*1;
                  var kol21 = Number(document.getElementById("num21").value)*2;
                  var kol31 = Number(document.getElementById("num31").value)*3;
                  var kol41 = Number(document.getElementById("num41").value)*4;
                  var kol61 = Number(document.getElementById("num61").value)*6;
                  var kol81 = Number(document.getElementById("num81").value)*8;
                  
                  var num11 = Number(document.getElementById("num11").value)*1;
                  var num21 = Number(document.getElementById("num21").value)*2;
                  var num31 = Number(document.getElementById("num31").value)*4;
                  var num41 = Number(document.getElementById("num41").value)*7;
                  var num61 = Number(document.getElementById("num61").value)*15;
                  var num81 = Number(document.getElementById("num81").value)*21;
                  var stan1 = Number(document.getElementById("stan1").value)*4;
                  var pereg11 = Number(document.getElementById("pereg11").value);
                  var pereg21 = Number(document.getElementById("pereg21").value);
                  var pereg31 = Number(document.getElementById("pereg31").value);
                  var pereg41 = Number(document.getElementById("pereg41").value);
                  var pereg51 = Number(document.getElementById("pereg51").value);
                  var pereg61 = Number(document.getElementById("pereg61").value);
                  var pereg71 = Number(document.getElementById("pereg71").value);
                  var pereg81 = Number(document.getElementById("pereg81").value);
                  var pereg91 = Number(document.getElementById("pereg91").value);
        
        
                  var result1 = 12 + num11 + num21 + num31 + num41+ num61 + num81 - stan1 + pereg11 + pereg21 + pereg31 + pereg41 + pereg51 + pereg61 + pereg71 + pereg81 + pereg91 + dl_marsh1;
                  var kol1 = kol11 + kol21 + kol31 + kol41 + kol61 + kol81;
		  var kol1_ost = 45 - kol1;
                  document.getElementById("result1").innerHTML = result1;
                  document.getElementById("kol1").innerHTML = kol1;
		  document.getElementById("kol1_ost").innerHTML = kol1_ost;
		  document.getElementById("red-score").innerHTML = "(" + result1 + ")";
                  }
         </script>
        <p></p>
        <fieldset>
            <legend>Final Score:</legend>
        <p id="result1"> score </p>
        </fieldset>
        
        <fieldset>
            <legend>Train Cars:</legend>
            <p>45 = <span id="kol1">quantity of train cars on the game board</span> + <span id="kol1_ost">quantity remaining</span></p>
        </fieldset>

  </div>






  <div id="content-2">
      

    <fieldset>
        <legend>TICKET TO RIDE</legend>
        <label for="num12">Train 1 </label>
        <input id="num12"/> (х1)
        <p></p>
        <label for="num22">Train 2 </label>
        <input id="num22"/> (х2)
        <p></p>
        <label for="num32">Train 3 </label>
        <input id="num32"/> (х4)
        <p></p>
        <label for="num42">Train 4 </label>
        <input id="num42"/> (х7)
        <p></p>
        <label for="num62">Train 6 </label>
        <input id="num62"/> (х15)
        <p></p>
        <label for="num82">Train 8 </label>
        <input id="num82"/> (х21)
        <p></p>
        <fieldset>
        <legend>Destination Ticket [Bonus/Penalty] </legend>
        <label for="stan2"  > Stations </label> 
        <input id="stan2"/> on the playing field

        <p></p>
        <label for="pereg12">Points  1</label>
        <input id="pereg12" style="width: 50px"/>
        
        <label for="pereg22">Points  2</label>
        <input id="pereg22" style="width: 50px"/>
        
        <label for="pereg32">Points  3</label>
        <input id="pereg32" style="width: 50px"/>

        <p></p> 
        <label for="pereg42">Points  4</label>
        <input id="pereg42" style="width: 50px"/>
        
        <label for="pereg52">Points  5</label>
        <input id="pereg52" style="width: 50px"/>
        
        <label for="pereg62">Points  6</label>
        <input id="pereg62" style="width: 50px"/>
        
        <p></p>
        <label for="pereg72">Points  7</label>
        <input id="pereg72" style="width: 50px"/>
        
        <label for="pereg82">Points  8</label>
        <input id="pereg82" style="width: 50px"/>
        
        <label for="pereg92">Points  9</label>
        <input id="pereg92" style="width: 50px"/>

        <p></p>
        <input type="checkbox" id="one2" onchange="fun12()"> Express Bonus

        </fieldset>
        </fieldset>
        <p></p>




        
        <button style="
        padding-left: 40px;
        padding-right: 40px;
        padding-top: 20px;
        padding-bottom: 20px;
        color: rgb(250, 246, 246);
        background-color: rgb(36, 50, 248);
        border-radius: 15px;" onclick="func2()"><b>   Calculating Scores   </b> </button>
        
        
        <script>
          dl_marsh2 = 0
            function fun12() {
var chbox;
chbox=document.getElementById('one2');
  if (chbox.checked) {
    dl_marsh2 = 10;
  }
  else {
    dl_marsh2 = 0;
  }
}




            function func2(){
                  var audio = new Audio();
                  audio.src = 'https://zvukipro.com/uploads/files/2021-11/1637861222_4-1.mp3';
                  audio.autoplay = true;
                  var kol12 = Number(document.getElementById("num12").value)*1;
                  var kol22 = Number(document.getElementById("num22").value)*2;
                  var kol32 = Number(document.getElementById("num32").value)*3;
                  var kol42 = Number(document.getElementById("num42").value)*4;
                  var kol62 = Number(document.getElementById("num62").value)*6;
                  var kol82 = Number(document.getElementById("num82").value)*8;
                  
                  var num12 = Number(document.getElementById("num12").value)*1;
                  var num22 = Number(document.getElementById("num22").value)*2;
                  var num32 = Number(document.getElementById("num32").value)*4;
                  var num42 = Number(document.getElementById("num42").value)*7;
                  var num62 = Number(document.getElementById("num62").value)*15;
                  var num82 = Number(document.getElementById("num82").value)*21;
                  var stan2 = Number(document.getElementById("stan2").value)*4;
                  var pereg12 = Number(document.getElementById("pereg12").value);
                  var pereg22 = Number(document.getElementById("pereg22").value);
                  var pereg32 = Number(document.getElementById("pereg32").value);
                  var pereg42 = Number(document.getElementById("pereg42").value);
                  var pereg52 = Number(document.getElementById("pereg52").value);
                  var pereg62 = Number(document.getElementById("pereg62").value);
                  var pereg72 = Number(document.getElementById("pereg72").value);
                  var pereg82 = Number(document.getElementById("pereg82").value);
                  var pereg92 = Number(document.getElementById("pereg92").value);
        
        
                  var result2 = 12 + num12 + num22 + num32 + num42+ num62 + num82 - stan2 + pereg12 + pereg22 + pereg32 + pereg42 + pereg52 + pereg62 + pereg72 + pereg82 + pereg92 + dl_marsh2;
                  var kol2 = kol12 + kol22 + kol32 + kol42 + kol62 + kol82;
		  var kol2_ost = 45 - kol2;
                  document.getElementById("result2").innerHTML = result2;
                  document.getElementById("kol2").innerHTML = kol2;
		  document.getElementById("kol2_ost").innerHTML = kol2_ost;
		  document.getElementById("blue-score").innerHTML = "(" + result2 + ")";
                  }
         </script>
        <p></p>
        <fieldset>
            <legend>Final Score:</legend>
        <p id="result2"> score </p>
        </fieldset>
        
        <fieldset>
            <legend>Train Cars:</legend>
            <p>45 = <span id="kol2">quantity of train cars on the game board</span> + <span id="kol2_ost">quantity remaining</span></p>
        </fieldset>

  </div>




  <div id="content-3">
    
    
    <fieldset>
        <legend>TICKET TO RIDE</legend>
        <label for="num13">Train 1 </label>
        <input id="num13"/> (х1)
        <p></p>
        <label for="num23">Train 2 </label>
        <input id="num23"/> (х2)
        <p></p>
        <label for="num33">Train 3 </label>
        <input id="num33"/> (х4)
        <p></p>
        <label for="num43">Train 4 </label>
        <input id="num43"/> (х7)
        <p></p>
        <label for="num63">Train 6 </label>
        <input id="num63"/> (х15)
        <p></p>
        <label for="num83">Train 8 </label>
        <input id="num83"/> (х21)
        <p></p>
        <fieldset>
        <legend>Destination Ticket [Bonus/Penalty] </legend>
        <label for="stan3"  > Stations </label> 
        <input id="stan3"/> on the playing field

        <p></p>
        <label for="pereg13">Points  1</label>
        <input id="pereg13" style="width: 50px"/>
        
        <label for="pereg23">Points  2</label>
        <input id="pereg23" style="width: 50px"/>
        
        <label for="pereg33">Points  3</label>
        <input id="pereg33" style="width: 50px"/>

        <p></p> 
        <label for="pereg43">Points  4</label>
        <input id="pereg43" style="width: 50px"/>
        
        <label for="pereg53">Points  5</label>
        <input id="pereg53" style="width: 50px"/>
        
        <label for="pereg63">Points  6</label>
        <input id="pereg63" style="width: 50px"/>
        
        <p></p>
        <label for="pereg73">Points  7</label>
        <input id="pereg73" style="width: 50px"/>
        
        <label for="pereg83">Points  8</label>
        <input id="pereg83" style="width: 50px"/>
        
        <label for="pereg93">Points  9</label>
        <input id="pereg93" style="width: 50px"/>

        <p></p>
        <input type="checkbox" id="one3" onchange="fun13()"> Express Bonus


        </fieldset>
        </fieldset>
        <p></p>




        
        <button style="
        padding-left: 40px;
        padding-right: 40px;
        padding-top: 20px;
        padding-bottom: 20px;
        color: rgb(5, 0, 0);
        background-color: rgb(36, 248, 64);
        border-radius: 15px;" onclick="func3()"><b>   Calculating Scores   </b> </button>
        
        
        <script>
          dl_marsh3 = 0
            function fun13() {
var chbox;
chbox=document.getElementById('one3');
  if (chbox.checked) {
    dl_marsh3 = 10;
  }
  else {
    dl_marsh3 = 0;
  }
}



            function func3(){
                    var audio = new Audio();
                  audio.src = 'https://zvukipro.com/uploads/files/2021-11/1637861275_8-1.mp3';
                  audio.autoplay = true;
                  var kol13 = Number(document.getElementById("num13").value)*1;
                  var kol23 = Number(document.getElementById("num23").value)*2;
                  var kol33 = Number(document.getElementById("num33").value)*3;
                  var kol43 = Number(document.getElementById("num43").value)*4;
                  var kol63 = Number(document.getElementById("num63").value)*6;
                  var kol83 = Number(document.getElementById("num83").value)*8;
                  
                  var num13 = Number(document.getElementById("num13").value)*1;
                  var num23 = Number(document.getElementById("num23").value)*2;
                  var num33 = Number(document.getElementById("num33").value)*4;
                  var num43 = Number(document.getElementById("num43").value)*7;
                  var num63 = Number(document.getElementById("num63").value)*15;
                  var num83 = Number(document.getElementById("num83").value)*21;
                  var stan3 = Number(document.getElementById("stan3").value)*4;
                  var pereg13 = Number(document.getElementById("pereg13").value);
                  var pereg23 = Number(document.getElementById("pereg23").value);
                  var pereg33 = Number(document.getElementById("pereg33").value);
                  var pereg43 = Number(document.getElementById("pereg43").value);
                  var pereg53 = Number(document.getElementById("pereg53").value);
                  var pereg63 = Number(document.getElementById("pereg63").value);
                  var pereg73 = Number(document.getElementById("pereg73").value);
                  var pereg83 = Number(document.getElementById("pereg83").value);
                  var pereg93 = Number(document.getElementById("pereg93").value);
        
        
                  var result3 = 12 + num13 + num23 + num33 + num43 + num63 + num83 - stan3 + pereg13 + pereg23 + pereg33 + pereg43 + pereg53 + pereg63 + pereg73 + pereg83 + pereg93 + dl_marsh3;
                  var kol3 = kol13 + kol23 + kol33 + kol43 + kol63 + kol83;
		  var kol3_ost = 45 - kol3;
                  document.getElementById("result3").innerHTML = result3;
                  document.getElementById("kol3").innerHTML = kol3;
		  document.getElementById("kol3_ost").innerHTML = kol3_ost;
		  document.getElementById("green-score").innerHTML = "(" + result3 + ")";
                  }
         </script>
        <p></p>
        <fieldset>
            <legend>Final Score:</legend>
        <p id="result3"> score </p>
        </fieldset>
        
        <fieldset>
            <legend>Train Cars:</legend>
            <p>45 = <span id="kol3">quantity of train cars on the game board</span> + <span id="kol3_ost">quantity remaining</span></p>
        </fieldset>
  </div>



  <div id="content-4">
    
    


    <fieldset>
        <legend>TICKET TO RIDE</legend>
        <label for="num14">Train 1 </label>
        <input id="num14"/> (х1)
        <p></p>
        <label for="num24">Train 2 </label>
        <input id="num24"/> (х2)
        <p></p>
        <label for="num34">Train 3 </label>
        <input id="num34"/> (х4)
        <p></p>
        <label for="num44">Train 4 </label>
        <input id="num44"/> (х7)
        <p></p>
        <label for="num64">Train 6 </label>
        <input id="num64"/> (х15)
        <p></p>
        <label for="num84">Train 8 </label>
        <input id="num84"/> (х21)
        <p></p>
        <fieldset>
        <legend>Destination Ticket [Bonus/Penalty] </legend>
        <label for="stan4"  > Stations </label> 
        <input id="stan4"/> on the playing field

        <p></p>
        <label for="pereg14">Points  1</label>
        <input id="pereg14" style="width: 50px"/>
        
        <label for="pereg24">Points  2</label>
        <input id="pereg24" style="width: 50px"/>
        
        <label for="pereg34">Points  3</label>
        <input id="pereg34" style="width: 50px"/>

        <p></p> 
        <label for="pereg44">Points  4</label>
        <input id="pereg44" style="width: 50px"/>
        
        <label for="pereg54">Points  5</label>
        <input id="pereg54" style="width: 50px"/>
        
        <label for="pereg64">Points  6</label>
        <input id="pereg64" style="width: 50px"/>
        
        <p></p>
        <label for="pereg74">Points  7</label>
        <input id="pereg74" style="width: 50px"/>
        
        <label for="pereg84">Points  8</label>
        <input id="pereg84" style="width: 50px"/>
        
        <label for="pereg94">Points  9</label>
        <input id="pereg94" style="width: 50px"/>


        <p></p>
        <input type="checkbox" id="one4" onchange="fun14()"> Express Bonus

        </fieldset>
        </fieldset>
        <p></p>
        
        <button style="
        padding-left: 40px;
        padding-right: 40px;
        padding-top: 20px;
        padding-bottom: 20px;
        color: rgb(5, 0, 0);
        background-color: rgb(234, 248, 36);
        border-radius: 15px;" onclick="func4()"><b>   Calculating Scores   </b> </button>
        
        
        <script>
          dl_marsh4 = 0
            function fun14() {
var chbox;
chbox=document.getElementById('one4');
  if (chbox.checked) {
    dl_marsh4 = 10;
  }
  else {
    dl_marsh4 = 0;
  }
}
            function func4(){
                  var audio = new Audio();
                  audio.src = 'https://zvukipro.com/uploads/files/2021-11/1637861465_gudok-poezd.mp3';
                  audio.autoplay = true;
                  var kol14 = Number(document.getElementById("num14").value)*1;
                  var kol24 = Number(document.getElementById("num24").value)*2;
                  var kol34 = Number(document.getElementById("num34").value)*3;
                  var kol44 = Number(document.getElementById("num44").value)*4;
                  var kol64 = Number(document.getElementById("num64").value)*6;
                  var kol84 = Number(document.getElementById("num84").value)*8;
                  
                  var num14 = Number(document.getElementById("num14").value)*1;
                  var num24 = Number(document.getElementById("num24").value)*2;
                  var num34 = Number(document.getElementById("num34").value)*4;
                  var num44 = Number(document.getElementById("num44").value)*7;
                  var num64 = Number(document.getElementById("num64").value)*15;
                  var num84 = Number(document.getElementById("num84").value)*21;
                  var stan4 = Number(document.getElementById("stan4").value)*4;
                  var pereg14 = Number(document.getElementById("pereg14").value);
                  var pereg24 = Number(document.getElementById("pereg24").value);
                  var pereg34 = Number(document.getElementById("pereg34").value);
                  var pereg44 = Number(document.getElementById("pereg44").value);
                  var pereg54 = Number(document.getElementById("pereg54").value);
                  var pereg64 = Number(document.getElementById("pereg64").value);
                  var pereg74 = Number(document.getElementById("pereg74").value);
                  var pereg84 = Number(document.getElementById("pereg84").value);
                  var pereg94 = Number(document.getElementById("pereg94").value);
        
        
                  var result4 = 12 + num14 + num24 + num34 + num44+ num64 + num84 - stan4 + pereg14 + pereg24 + pereg34+ pereg44+ pereg54+ pereg64+ pereg74+ pereg84+ pereg94 +  + dl_marsh4;
                  var kol4 = kol14 + kol24 + kol34 + kol44 + kol64 + kol84;
		  var kol4_ost = 45 - kol4;
                  document.getElementById("result4").innerHTML = result4;
                  document.getElementById("kol4").innerHTML = kol4;
		  document.getElementById("kol4_ost").innerHTML = kol4_ost;
		  document.getElementById("yellow-score").innerHTML = "(" + result4 + ")";
                  }
         </script>
        <p></p>
        <fieldset>
            <legend>Final Score:</legend>
        <p id="result4"> score </p>
        </fieldset>
        
        <fieldset>
            <legend>Train Cars:</legend>
            <p>45 = <span id="kol4">quantity of train cars on the game board</span> + <span id="kol4_ost">quantity remaining</span></p>
        </fieldset>
  </div>



  <div id="content-5">
    
    

    <fieldset>
        <legend>TICKET TO RIDE</legend>
        <label for="num15">Train 1 </label>
        <input id="num15"/> (х1)
        <p></p>
        <label for="num25">Train 2 </label>
        <input id="num25"/> (х2)
        <p></p>
        <label for="num35">Train 3 </label>
        <input id="num35"/> (х4)
        <p></p>
        <label for="num45">Train 4 </label>
        <input id="num45"/> (х7)
        <p></p>
        <label for="num65">Train 6 </label>
        <input id="num65"/> (х15)
        <p></p>
        <label for="num85">Train 8 </label>
        <input id="num85"/> (х21)
        <p></p>
        <fieldset>
        <legend>Destination Ticket [Bonus/Penalty] </legend>
        <label for="stan5"  > Stations </label> 
        <input id="stan5"/> on the playing field

        <p></p>
        <label for="pereg15">Points  1</label>
        <input id="pereg15" style="width: 50px"/>
        
        <label for="pereg25">Points  2</label>
        <input id="pereg25" style="width: 50px"/>
        
        <label for="pereg35">Points  3</label>
        <input id="pereg35" style="width: 50px"/>

        <p></p> 
        <label for="pereg45">Points  4</label>
        <input id="pereg45" style="width: 50px"/>
        
        <label for="pereg55">Points  5</label>
        <input id="pereg55" style="width: 50px"/>
        
        <label for="pereg65">Points  6</label>
        <input id="pereg65" style="width: 50px"/>
        
        <p></p>
        <label for="pereg75">Points  7</label>
        <input id="pereg75" style="width: 50px"/>
        
        <label for="pereg85">Points  8</label>
        <input id="pereg85" style="width: 50px"/>
        
        <label for="pereg95">Points  9</label>
        <input id="pereg95" style="width: 50px"/>


        <p></p>
        <input type="checkbox" id="one5" onchange="fun15()"> Express Bonus

        </fieldset>
        </fieldset>
        <p></p>
        
        <button style="
        padding-left: 40px;
        padding-right: 40px;
        padding-top: 20px;
        padding-bottom: 20px;
        color: rgb(238, 235, 235);
        background-color: rgb(36, 34, 33);
        border-radius: 15px;" onclick="func5()"><b>   Calculating Scores   </b> </button>
        
        
        <script>
          dl_marsh5 = 0
            function fun15() {
var chbox;
chbox=document.getElementById('one5');
  if (chbox.checked) {
    dl_marsh5 = 10;
  }
  else {
    dl_marsh5 = 0;
  }
}
            function func5(){
                  var audio = new Audio(); // Создаём новый элемент Audio
                  audio.src = 'https://zvukipro.com/uploads/files/2021-11/1637860760_3-1.mp3'; // Указываем путь к звуку "клика"
                  audio.autoplay = true; // Автоматически запускаем
                  var kol15 = Number(document.getElementById("num15").value)*1;
                  var kol25 = Number(document.getElementById("num25").value)*2;
                  var kol35 = Number(document.getElementById("num35").value)*3;
                  var kol45 = Number(document.getElementById("num45").value)*4;
                  var kol65 = Number(document.getElementById("num65").value)*6;
                  var kol85 = Number(document.getElementById("num85").value)*8;
                  
                  var num15 = Number(document.getElementById("num15").value)*1;
                  var num25 = Number(document.getElementById("num25").value)*2;
                  var num35 = Number(document.getElementById("num35").value)*4;
                  var num45 = Number(document.getElementById("num45").value)*7;
                  var num65 = Number(document.getElementById("num65").value)*15;
                  var num85 = Number(document.getElementById("num85").value)*21;
                  var stan5 = Number(document.getElementById("stan5").value)*4;
                  var pereg15 = Number(document.getElementById("pereg15").value);
                  var pereg25 = Number(document.getElementById("pereg25").value);
                  var pereg35 = Number(document.getElementById("pereg35").value);
                  var pereg45 = Number(document.getElementById("pereg45").value);
                  var pereg55 = Number(document.getElementById("pereg55").value);
                  var pereg65 = Number(document.getElementById("pereg65").value);
                  var pereg75 = Number(document.getElementById("pereg75").value);
                  var pereg85 = Number(document.getElementById("pereg85").value);
                  var pereg95 = Number(document.getElementById("pereg95").value);
        
        
                  var result5 = 12 + num15 + num25 + num35 + num45 + num65 + num85 - stan5 + pereg15 + pereg25 + pereg35 + pereg45 + pereg55 + pereg65 + pereg75 + pereg85 + pereg95 + dl_marsh5;
                  var kol5 = kol15 + kol25 + kol35 + kol45 + kol65 + kol85;
		  var kol5_ost = 45 - kol5;

                  document.getElementById("result5").innerHTML = result5;
                  document.getElementById("kol5").innerHTML = kol5;
		  document.getElementById("kol5_ost").innerHTML = kol5_ost;
		  document.getElementById("black-score").innerHTML = "(" + result5 + ")";
                  }
         </script>
        <p></p>
        <fieldset>
            <legend>Final Score:</legend>
        <p id="result5"> score </p>
        </fieldset>
        
        <fieldset>
            <legend>Train Cars:</legend>
            <p>45 = <span id="kol5">quantity of train cars on the game board</span> + <span id="kol5_ost">quantity remaining</span></p>
        </fieldset>


  </div>
</div>
