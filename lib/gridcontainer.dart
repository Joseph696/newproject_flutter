
// GridView.count(
//                   padding: EdgeInsets.zero,
//                   childAspectRatio: .9,
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   crossAxisCount: 3,
//                   children: List.generate(
//                       8,
//                       (index) => Padding(
//                           padding: const EdgeInsets.all(8),
//                           child: Container(
//                               decoration: BoxDecoration(
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey,
//                                       blurRadius: 2.0, // soften the shadow
//                                       spreadRadius: 2.0, //extend the shadow
//                                       offset: Offset(
//                                         5.0, // Move to right 5  horizontally
//                                         2.0, // Move to bottom 5 Vertically
//                                       ),
//                                     )
//                                   ],
//                                   //color: Colors.grey,
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(255, 243, 245, 243)),
//                               child: Column(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(10),
//                                         topRight: Radius.circular(10)),
//                                     child: Image(
//                                       image:
//                                           NetworkImage(categoryFoodPics[index]),
//                                       width: double.infinity,
//                                       height: 95,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(top: 10),
//                                     child: Text(categoryNames[index],
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black,
//                                           fontSize: 13,
//                                         ),
//                                         textAlign: TextAlign.center),
//                                   ),
//                                 ],
//                               )))),
//                 );