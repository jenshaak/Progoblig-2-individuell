use context essentials2021
fun flagg(Top, Cross, Main): #Definerer funksjonen "flagg" med variablene Top, Cross og Main. Bruker Cross fordi dette blir en enklere kode enn to uavhengige rektangler.
  #Lager en ramme som jeg setter rektangler og kvadrater inn i. Her forteller jeg størrelsen og plasseringen jeg vil ha på disse.
  frame( 
    overlay-xy(rectangle(220, 20, "solid", Cross),
      0, -70,
      overlay-xy(rectangle(20, 160, "solid", Cross),
        -70, 0,
        overlay-xy(square(60, "solid", Top),
          0, 0,
          overlay-xy(square(60, "solid", Top),
            0, -100,
            overlay-xy(rectangle(120, 60, "solid", Top),
              -100, -100,
              overlay-xy(rectangle(120, 60, "solid", Top),
                -100, 0,
                rectangle(220, 160, "solid", Main)))))))) 

  #Setter inn farger i "Top", "Cross" og "Main"
end
Norge = flagg("red", "blue", "white")
Sverige = flagg("blue", "yellow", "yellow")
Finland = flagg("white", "blue", "blue")
Danmark = flagg("red", "white", "red")
Faeroyene = flagg("white", "red", "blue")
Island = flagg("blue", "red", "white")

#Kjører funksjonene for de forskjellige flaggene.
Norge
Sverige
Finland
Danmark
Faeroyene
Island