
import 'package:flutter/material.dart';
import 'package:shayri/td.dart';

class secondpage extends StatefulWidget {
  List l;
  int ind;

  secondpage(this.l, this.ind);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List l1 = [];
  @override
  void initState() {
    if(widget.ind==0){
      l1=["मत मुस्कुराओ इतना की फूलो को खबर लग जाये,हम करें आपकी तारीफ और आपको नजर लग जाये खुदा करे बहुत लम्बी हो आपकी जिंदगी ,और उस पर भी हमारी उम्र लग जाये…",
        "बीते साल को विदा इस तरह करते है. जो नहीं किया अब तक वो भी कर गुजरते है.नया साल आने के खुशिया तो सब मानते है.एक बार हम इते साल कि जस्न मानते है",
        "हर पल मे खुशी देती है मा,अपनी ज़िंदगी से जीवन देती है मा,भगवान क्या है!!! मा की पूजा करो जनाब,क्यूकी भगवान को भी जनम देती है मा…",
        "बरसात आये तो ज़मीन गीली न हो,धूप आये तो सरसों पीली न हो,ए दोस्त तूने यह कैसे सोच लिया कि,तेरी याद आये और पलकें गीली न हों।",
      ];
    }
    if(widget.ind==1 ){
      l1=["खुशबू की तरह मेरी साँसों में रहना;लहू बनके मेरी नस-नस में बहना;दोस्ती होती है रिश्तों का अनमोल गहना;इसलिए दोस्त को कभी अलविदा न कहना।",
        "लोग रूप देखते है ,हम दिल देखते है ,लोग सपने देखते है हम हक़ीकत देखते है,लोग दुनिया मे दोस्त देखते है,हम दोस्तो मे दुनिया देखते है।",
        "कहीं अंधेरा तो कहीं शाम होगी,मेरी हर ख़ुशी तेरे नाम होगी,कभी मांग कर तो देख हमसे ए दोस्त,होंठो पर हसीं और हथेली पर जान होगी।",
        "हर मोड़ पर मुकाम नहीं होता,दिल के रिश्तो का कोई नाम नहीं होता,चिराग की रौशनी से ढूँढा है आपको,आप जैसा दोस्त मिलना आसान नहीं होता।"
      ];
    }
    if(widget.ind==2){
      l1=["जबसे तुम गये हो जिंदगी से जानम,जिंदगी मेरी खुशहाल हो गई सनम,ना रोना, ना धोना, ना किसीको खोना,ना बैटरी, ना बैलेंस का खतम होना।",
        "तुम नाराज हो जाओगी तो मना लूंगा तुम नाराज हो जाओगी तो मना लूंगा लेकिन....इसका यह मतलब नहीं कि तुम रोज बंदरी जैसा मुँह बनाकर बैठ जाओ",
        "आदमी अपने घर में सिर्फ...दो ही कारणों से खुश होता हैं,जब बीवी ' नई '  हो या बीवी ' नहीं ' हो!",
        "शादी तो ऐसी लडकी से करूंगा शादी तो ऐसी लडकी से करूंगा जो रोज सुबह जगा कर पूछे....जानूँ पहले 'चाय' या 'चुम्मी'!",
    ];
    }
    if(widget.ind==3 ){
      l1=["जो लोग ईश्वर को पाना चाहते हैं,उन्हें वाणी, मन, इंद्रियों की पवित्रता और एक दयालु हृदय की जरूरत होती हैं।",
        "जय हो हृदय में बसे नन्द लाल की,जय हो हृदय में बसे बाल गोपाल की।",
        "साधू बने तो मोहमाया छूटे,वैरागी बने तो छूटे तन,हरि तेरे से सच्चा प्रेम हो जाए तो तभी छूटे सारे मोह माया के बंधन।",
        "शिव की ज्योति से प्रकाश बढ़ता है। जो भी जाता है भोले के द्वार। कुछ न कुछ उसे जरुर मिलता है।",
      ];
    }
    if(widget.ind==4){
      l1=["बारे दुनिया में रहो ग़म-ज़दा या शाद रहो ऐसा कुछ कर के चलो याँ कि बहुत याद रहो",
        "कुछ ऐसे सिलसिले भी चले ज़िंदगी के साथ कड़ियां मिलीं जो उनकी तो ज़ंजीर बन गए",
        "मुझको उस वैद्य की विद्या पे तरस आता है भूखे लोगों को जो सेहत की दवा देता है",
        "साहिल के सुकूँ से किसे इंकार है लेकिन तूफ़ान से लड़ने में मज़ा और ही कुछ है ",
      ];
    }
    if(widget.ind==5 ){
      l1=["हर गलती की सजा देती हैं जिन्दगी लेकिन साथ रहकर सहती भी हैं जिन्दगी ख़ुशी हो या गम अपनाती हैं जिन्दगी हर पल साथ निभाती हैं ज़िन्दगी",
        "जब जीना ही हैं जिन्दगी को तो क्यूँ पल-पल आँसू बहाये एक बार हँसकर गले तो लगाओ गम को ये गम आने से ही शरमाये",
        "पल पल बदलता हैं जिन्दगी का नजारा खाली पन्नो में जुड़ता जाता हैं जिन्दगी का फसना कभी पलट कर देखना उन पन्नो को जहाँ था साथ मेरा तुम्हारा",
        "हर पल पीछे छुटता जाता हैं नया सवेरा सदा जिन्दगी कहलाता हैं कभी अतीत की गहराइयों में मत जीना जिन्दगी का मजा तो बस आज में आता हैं",
      ];
    }
    if(widget.ind==6){
      l1=["आज भी तेरे कदमो के निशान रहते हैं,क्योंकि हम इस रास्ते से किसी को गुजरने नही देते हैं।",
        "हम ने चाहा उसे गम ना मिलें,अगर ख़ुशी मिलती है उसे हम से जुदा होकर,तो दुआ है ख़ुदा से कि उसे कभी हम ना मिलें",
        "चाहत हुई किसी से तो फिर बेइन्तेहाँ हुई,चाहा तो चाहतों की हद से गुजर गए,हमने खुदा से कुछ भी न माँगा मगर उसे,माँगा तो सिसकियों की भी हद से गुजर गये",
        "आज भी तेरे कदमो के निशान रहते हैं,क्योंकि हम इस रास्ते से किसी को गुजरने नही देते हैं।",
      ];
    }
    if(widget.ind==7 ){
      l1=["बेईमानी इनका धर्म है ये नेता बड़े बेशर्म है सेंक लेते हैं राजनीतिक रोटियां जब देखे तवा गर्म है",
        "इन नेताओं से कह दो अगर सियासत करनी है तो इमानदारी से करो जनता ने जो जिम्मेवारी सौंपी है उस तुम जिम्मेवारी से करो",
        "राजनीति का रिश्तों में उतना ही दखल हो जितना कि राजनीति रिश्तों में दरार ना बनें चूस रहे जो ग़रीबों के खून पसीने की कमाई ऐसे दमनकारीयों की कभी सरकार ना बने",
        "जब से झूठे नेता आ गए हैं प्रभाव में जनता परेशान है सुविधा के अभाव में सियासत के जो बन बैठे हैं सरोकार उन्हें मज़ा चखाना इस बार चुनाव में",
      ];
    }
    if(widget.ind==8){
      l1=["जिनसे थे मेरे नैन मिले,बन गए थे ज़िन्दगी के सिलसिले ।इतना प्यार करने के बाद भी,सनम मेरे बेवफा निकले।",
        "भुला दूंगा तुम्हे भी थोड़ा सबर रखना तुम्हारी तरह बेवफा होने में थोडा वक्त लगेगा",
        "अपने गुरूर को आजमाने की जिद थी. वरना हमें मालूम था की.तुम बेवफा हो जाओगे.",
        "जिस किसीको भी चाहो वोह बेवफा हो जाता है,सर अगर झुकाओ तो सनम खुदा हो जाता है,जब तक काम आते रहो हमसफ़र कहलाते रहो,काम निकल जाने पर हमसफ़र कोई दूसरा हो जाता है…",
      ];
    }
    if(widget.ind==9 ){
      l1=["खुद ही रोए और खुद ही चुप हो गए,ये सोचकर की कोई अपना होता तो रोने ना देता!!",
        "जरा सी गलतफहमी पर न छोड़ो किसी अपने का दामन क्योंकि जिंदगी बीत जाती है किसी को अपना बनाने में",
        "आँसू भी आते हैं और दर्द भी छुपाना पड़ता है ये जिंदगी है साहब यहां जबरदस्ती भी मुस्कुराना पड़ता है।",
        "आधा ख्वाब, आधा इश्क़, आधी सी है बंदगी,मेरे हो…पर मेरे नही.. कैसी है ये जिंदगी…",
      ];
    }
    if(widget.ind==10){
      l1=["मत पूछ उसके मैखाने का पता ऐ साकी,उसके शहर का तो पानी भी नशा देता है.",
        "कभी उलझ पड़े खुदा से कभी साक़ी से हंगामा,ना नमाज अदा हो सकी ना शराब पी सके।",
        "तेरी आँखों के ये जो प्याले हैं,मेरी अंधेरी रातों के उजाले हैं,पीता हूँ जाम पर जाम तेरे नाम का,हम तो शराबी बे-शराब वाले हैं.",
        "आए थे हँसते खेलते मय-ख़ाने में ‘फ़िराक़’जब पी चुके शराब तो संजीदा हो गए",
      ];
    }
    if(widget.ind==11){
      l1=["यही दुआ करता हूँ खुदा से आपकी ज़िन्दगी में कोई गम न हो जन्मदिन पर मिले हज़ारो खुशियां चाहे उनमे शामिल हम न हो",
        "दुनिया की खुशियाँ आपको मिल जायें अपनों से मिलके आपका मन खिल जाये चेहरे पर दुःख की कभी शिकन भी न हो आपके जन्मदिन पर मेरी दिल से शुभकामनाएं",
        "आपके आँखों में सजे हो जो भी सपने और दिल में छुपी हो जो भी अभिलाषाएं दुआ है ये हमारी की आज के दिन वो सब सच हो जाये जन्मदिन की बहुत बहुत सुभकामनाएँ",
        "गम कोई आपको दे ना सके ख़ुशी कोई आपसे छीन ना पाए हो हर रास्ते इतने आसान की आप अपनी हर मंजिल को पाए",
      ];
    }
    if(widget.ind==12){
      l1=["निकलो गलियों में बना कर टोली,भिगा दो आज हर एक की झोली,कोई मुस्कुरा दे तो उसे गले लगा लो,वरना निकल लो, लगा के रंग कह के हैप्पी होली.",
        "प्यार के रंग से भरो पिचकारी,स्नेह के रंग से रंग दो दुनिया सारी,ये रंग ना जाने जात ना कोई बोली।",
        "सभी रंगों का रास है होली,मन का उल्लास है होली जीवन में खुशियां भर देती है,बस इसीलिए ख़ास है होली। हैप्पी होली…",
        "हमेशा मीठी रहे आपकी बोली खुशियों से भर जाए आपकी झोली आप सबको मेरी तरह से हैप्पी होली",
      ];
    }

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Text("${widget.l[widget.ind]}",style: TextStyle(color: Colors.black)),

      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/p${widget.ind + 1}.jpg"))),
        child: ListView.builder(
          itemCount: l1.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return thirdpage(l1,index);
                  },));
                },
                title: Text("${l1[index]}",maxLines: 1,),
                tileColor: Colors.yellow[50],
              ),
            );
          },
        ),
      ),
    );
  }
}
