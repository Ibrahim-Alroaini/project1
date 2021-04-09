import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprojectto/model/country_model.dart';
import 'package:myprojectto/model/popular_tours_model.dart';

List<CountryModel> getCountrys() {
  List<CountryModel> country = new List();
  CountryModel countryModel = new CountryModel();

//1
  countryModel.countryName = "جدة";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
     'assets/Jeddah.jpg';
 country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "الطائف";
  countryModel.label = "New";
  countryModel.noOfTours = 12;
  countryModel.rating = 4.3;
  countryModel.imgUrl =
'assets/taif.jpg';


  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "المدينه";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
 'assets/madena.jpg';
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "الرياض";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  'assets/borg-almamlka.jpg';
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "مكة";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
 'assets/maka.jpg';
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "الطائف";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  'assets/taif.jpg';

  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "الدمام";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
  '';

  country.add(countryModel);
  countryModel = new CountryModel();

  return country;
}

List<PopularTourModel> getPopularTours() {
  List<PopularTourModel> popularTourModels = new List();
  PopularTourModel popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
     'assets/Jeddah.jpg';
  popularTourModel.title = "كورنيش جذة";
  popularTourModel.desc = "     كورنيش جده( الواجهه البحريه )";
  popularTourModel.price = "";
  popularTourModel.rating = 4.0;
  popularTourModel.icons =  'assets/kurnishj2.jpg';
  popularTourModel.aboutserv = "درجة الحراره";
 popularTourModel.aboutPlace="عتبر كورنيش جدة الواجهة البحرية أحد عوامل الجذب الرئيسية في مدينة جدة إذ يبلغ طوله 4.2 كم ويمتاز بمجموعة من الشواطئ الرملية الذهبية والممرات الخلابة وبعد أن خضع لعملية تجديد رئيسية في عام 2017 صبح يشمل أيضاً ثلاثة خلجان جديدة ورصيف متعرج وحدائق مورقة، ويجذب اليوم مجموعة كبيرة من العائلات بمساحاته المفتوحة الواسعة والتي تتيح للأطفال فرصة اللعب في الحدائق المخصصة لهم أو بجانب النوافير الرائعة التي يضمها بينما يمكن للبالغين الاشتراك في مجموعة مختارة من الرياضات المائية على الشاطئ واستئجار الدراجات على طول الكورنيش أو التنزه أسفل الرصيف للاستمتاع بغروب الشمس وإطلالات جميلة على البحر الأحمر";
popularTourModel.imgPlace = new List(3);
  popularTourModel.imgPlace[0]='assets/kurnishj1.jpg';
  popularTourModel.imgPlace[1]='assets/kurnishj2.jpg';
  popularTourModel.imgPlace[2]='assets/kurnishj3.jpg';
 
 popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();


//1

  popularTourModel.imgUrl =
      'assets/borg-almamlka.jpg';
      popularTourModel.title = "برج المملكةفي الرياض";
  popularTourModel.desc = "من أبرز معالم السعودية في الرياض";
  popularTourModel.price = "";
  popularTourModel.rating = 4.5;
 popularTourModel.aboutPlace="من أبرز معالم السعودية الحديثة التي يرجع تاريخها إلى العام 2002، ويتسم برج المملكة بكونه أفخم مركز للتسوق في الرياض، ويصل ارتفاعه إلى 300 متر، هذا إلى جانب تصميمه المعماري المُميّز الذي يضم عدد كبير من المحلات التجارية والمطاعم والشقق السكنية وقاعات الاحتفالات وأيضاً فندق الفورسيزون، كما ستجد هناك ثاني أعلى المساجد في العالم وهو “مسجد الملك عبد الله يُمكنك من خلال البرج الاستمتاع برؤية بانورامية للمدينة من أعلى مع التقاط أروع الصور أو التسوق من متاجر مدخله الرئيسي";
 
  popularTourModel.imgPlace = new List(3);
  popularTourModel.imgPlace[0]='assets/borg1.jpg';
  popularTourModel.imgPlace[1]='assets/borg2.jpg';
  popularTourModel.imgPlace[2]='assets/borg3.jpeg';

 // popularTourModel.imagplace1='assets/borg2.jpg';
 
  
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
  'assets/samak.jpg';
  popularTourModel.title = " قلعة المصمك";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "";
  popularTourModel.rating = 4.2;
 popularTourModel.aboutPlace="يعود تاريخها في نهاية القرن 19 وهى من أبرز معالم السعودية الاثرية، وتقع القلعة التي تتخذ هيكل مبنى طيني خرساني مربع بمركز المدينة القديمة “الديرة”. تتمتع القلعة بتاريخ عريق إذ كان لها الفضل في أن تحمل المملكة لقب عائلة آل سعود بعدما شهدت تجميع قوات بن سعود لاستعادة مدينة الرياض عام 1902يُمكنك الانضمام لإحدى الجولات المُنظمة للقلعة بصحبة مرشد سياحي مع مراعاة وجود فرق في مواعيد الزيارة بين الذكور والإناث وكذلك الزيارات العائلية";
popularTourModel.imgPlace = new List(3);
  popularTourModel.imgPlace[0]='assets/masak1.jpg';
  popularTourModel.imgPlace[1]='assets/masak2.jpg';
  popularTourModel.imgPlace[2]='assets/masak3.jpg';
  
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
  'assets/';
  popularTourModel.title = "منتزه الملك عبد الله";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "";
  popularTourModel.rating = 4.0;
 popularTourModel.aboutPlace="من أجمل معالم السياحة في السعودية المتواجد بقلب عاصمتها الرياض وبالتحديد منطقة الملز، يوفر المنتزه الضخم لزائريه مساحة واسعة من المُسطحات الخضراء، التي تتوسطها بركة مياه ونوافير مع ملاعب وصالات بلياردو ومدينة كاملة للألعاب الترفيهية، وذلك يوميًا من العاشرة صباحًا وحتى الحادية عشر مساءً";
   popularTourModel.imgPlace = new List(3);
  popularTourModel.imgPlace[0]='assets/muntsah1.jpg';
  popularTourModel.imgPlace[1]='assets/muntsah2.jpg';
  popularTourModel.imgPlace[2]='assets/muntsah3.jpg';
 
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
   'assets/masjed-alaem.jpg';
   popularTourModel.title = "المسجد العائم";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "";
  popularTourModel.rating = 4.0;
 popularTourModel.aboutPlace="مسجد الرحمة العائم” أو “مسجد فاطمة الزهراء” كما يدعوه العوام، من أشهر معالم السياحة في السعودية التي تلفت أنظار السياح من مُختلف العقائد والبلدان حول العالم للاستمتاع بمظهره الفريد بقلب بحر جدة على مقربة من الكورنيش، بجانب تصميمه المعماري الداخلي والخارجي الذي تُضفي إليه وحدات الإضاءة الليلية وصفاء وحفيف مياه البحر وارتفاعها في فترات المد رونقًا خاصًا بالإضافة إلى ما سبق يكتسب المسجد شهرته وأهميته من كونه أقدم مسجد يتم بنائه على سطح مياه البحر منذ منتصف الثمانينات.";
  popularTourModel.imgPlace = new List(3);
  popularTourModel.imgPlace[0]='assets/mas1.jpg';
  popularTourModel.imgPlace[1]='assets/mas2.jpg';
  popularTourModel.imgPlace[2]='assets/mas3.jpg';
  
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
 'assets/masjed-alhram.jpg';
 popularTourModel.title = " المسجد الحرام";
  popularTourModel.desc = "من أهم وأشهر معالم السياحة الدينية في السعودية";
  popularTourModel.price = "";
  popularTourModel.rating = 4.0;
 popularTourModel.aboutPlace="أحد أهم وأشهر معالم السياحة الدينية في السعودية، ويكتسب أهميته وقُدسيته لدى المسلمين من كونه موقع الحج الأعظم وقد شهدت ساحته عدة توسعات عبر الدهور وتضم الكعبة المُشرفة ومقام إبراهيم وحجر إسماعيل وفي مُحيطها بئر زمزم ومسعى الصفا والمروة أما بناء المسجد نفسه فقد أصبح يحمل نحو 13 مئذنة 5 مداخل أو أبواب رئيسية وعشرات من الأبواب الفرعية ساحة صلاة وطواف ترتفع لأربع أدوار وتتسع لمليوني إلى 4 ملايين مُصلي على مساحة تتراوح بين 400 إلى 800 متر";
  popularTourModel.imgPlace = new List(3);
  popularTourModel.imgPlace[0]='assets/harm1.jpg';
  popularTourModel.imgPlace[1]='assets/harm3.jpg';
  popularTourModel.imgPlace[2]='assets/harm4.jpg';
  
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
   'assets/nafor-fahd.jpg';
  popularTourModel.title = "نافورة الملك فهد";
  popularTourModel.desc = "من اهم المعالم في مدينة جدة";
  popularTourModel.price = "";
  popularTourModel.rating = 4.0;
 popularTourModel.aboutPlace="واحدة من أشهر معالم السعودية السياحية في قلب جدة وبالتحديد على طول شاطئها الذي يُمثل أحد أجمل شواطئ المملكة في قطاعها الغربي. وقد اكتسبت نافورة الملك فهد شهرتها بفضل تصنيفها كأطول وأضخم نافورة في العالم يتراوح حجمها وارتفاعها ما بين 18 طن من مياه البحر و312 متر، بمصابيح إضاءة تصل قوتها إلى 500 مصباح، ويُمكنك رؤية ارتفاع النافورة من أي مكان بجدة";
 
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://images.pexels.com/photos/358457/pexels-photo-358457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = " حديقة ملاهي الشلال";
  popularTourModel.desc = "من اهم المعالم في مدينة جدة";
  popularTourModel.price = "";
  popularTourModel.rating = 4.0;
 popularTourModel.aboutPlace="هذه الحديقة من أجمل معالم السياحة في السعودية المناسبة للتنزه مع العائلة والأطفال فهي مدينة ملاهي كبيرة كاملة الخدمات والمرافق توفر ألعاب تُناسب مُختلف الأعمار والأذواق من الأطفال والشباب ومن هم أكبر، هذا إلى جانب صالات للبلياردو والبينج بونج وأخرى للتزلج على الجليد كما تضم الحديقة مسرحًاولعل أهم ما يُميّز حديقة الشلال وقوعها على كورنيش شاطئ جدة مما يعني أنه بإمكانك الاستمتاع برحلة رائعة بالقارب في مياه البحر الأحمر الصافية";
 
 
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  return popularTourModels;
}
