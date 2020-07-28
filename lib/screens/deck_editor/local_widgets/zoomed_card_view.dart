// import 'dart:io';

// import 'package:mydeck/models/entitites/card.dart' as Entity;
// import 'package:mydeck/models/entitites/my_deck_file.dart';
// import 'package:mydeck/models/entitites/unique_id.dart';
// import 'package:mydeck/utils/file_factory.dart';
// import 'package:mydeck/utils/images_util.dart';
// import 'package:mydeck/widgets/card_content_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:mydeck/generated/l10n.dart';

// class ZoomedCardView extends StatefulWidget {
//   ZoomedCardView(
//       {Key key,
//       @required this.isEditing,
//       @required this.card,
//       @required this.onUpdateCard,
//       @required this.onDeleteCard})
//       : super(key: key);

//   final Entity.Card card;
//   final bool isEditing;

//   @override
//   State<StatefulWidget> createState() => _ZoomedCardViewState();

//   final Function(Entity.Card newCard) onUpdateCard;

//   final Function() onDeleteCard;
// }

// class _ZoomedCardViewState extends State<ZoomedCardView> {
//   bool get isEditing => widget.isEditing;

//   Function() get onDeleteCard => widget.onDeleteCard;

//   Function(Entity.Card newCard) get onUpdateCard => widget.onUpdateCard;

//   Entity.Card card;

//   @override
//   void initState() {
//     super.initState();
//     card = widget.card;
//   }

//   Widget _getWidgetFromContent(MDFile cardContent, bool isAnswer) {
//     if (cardContent is ImageFile) {
//       return Padding(
//           padding: EdgeInsets.symmetric(vertical: 36, horizontal: 0),
//           child: Image.file(
//             cardContent.getFileOrCrash(),
//             fit: BoxFit.cover,
//           ));
//     } else if (cardContent is TextFile) {
//       if (isAnswer) {
//         return TextCardWidget(
//           contentText: cardContent.getFileOrCrash().readAsStringSync(),
//           onTextChanged: (text) {
//             print(text);
//             setState(() {
//               // card = card.copyWith(
//               //     answer: cardContent.copyWith(
//               //         text: File('CA_${card.id}')..writeAsStringSync(text)));
//               onUpdateCard(card);
//             });
//           },
//           isEditing: isEditing,
//         );
//       } else {
//         return TextCardWidget(
//           content: cardContent,
//           onTextChanged: (text) {
//             print(text);
//             setState(() {
//               card = card.copyWith(
//                   question: cardContent.copyWith(
//                       text: File('CQ_${card.id}')..writeAsStringSync(text)));
//               onUpdateCard(card);
//             });
//           },
//           isEditing: isEditing,
//         );
//       }
//     } else {
//       if (isAnswer) {
//         return TextCardWidget(
//           content: cardContent,
//           onTextChanged: (text) {
//             setState(() {
//               card = card.copyWith(
//                   answer: (cardContent as TextFile).copyWith(
//                       text: File('CA_${card.id}')..writeAsStringSync(text)));
//               onUpdateCard(card);
//             });
//           },
//           isEditing: isEditing,
//         );
//       } else {
//         return TextCardWidget(
//           content: cardContent,
//           onTextChanged: (text) {
//             print(text);
//             setState(() {
//               card = card.copyWith(
//                   question: (cardContent as TextFile).copyWith(
//                       text: File('CQ_${card.id}')..writeAsStringSync(text)));
//               onUpdateCard(card);
//             });
//           },
//           isEditing: isEditing,
//         );
//       }
//     }
//   }

//   Widget _answerCard(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Card(
//         elevation: 4,
//         child: Container(
//           height: MediaQuery.of(context).size.height / 2.2,
//           width: MediaQuery.of(context).size.width / 1.5,
//           child: Stack(
//             children: <Widget>[
//               Align(
//                   alignment: Alignment.center,
//                   child: _getWidgetFromContent(card.answer, true)),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: Text(
//                     S.of(context).meta_answer,
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: isEditing
//                     ? Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           IconButton(
//                             icon: Icon(Icons.add_photo_alternate,
//                                 color: Colors.grey),
//                             onPressed: () async {
//                               final image =
//                                   await ImagesUtil.pickImageFromGallery();
//                               if (image != null) {
//                                 setState(() {
//                                   card = card.copyWith(
//                                       answer: ImageFile(
//                                           uniqueId: UniqueId(), file image));

//                                   onUpdateCard(card);
//                                 });
//                               }
//                             },
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.text_fields, color: Colors.grey),
//                             onPressed: () async {
//                               setState(() {
//                                 card = card.copyWith(
//                                   answer: MDFile.text(
//                                     uniqueId: UniqueId(),
//                                     text: File("CA_${card.id}"),
//                                   ),
//                                 );
//                                 onUpdateCard(card);
//                               });
//                             },
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.brush, color: Colors.grey),
//                             onPressed: () {},
//                           )
//                         ],
//                       )
//                     : Spacer(
//                         flex: 1,
//                       ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _questionCard(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Card(
//         elevation: 4,
//         child: Container(
//           height: MediaQuery.of(context).size.height / 2.2,
//           width: MediaQuery.of(context).size.width / 1.5,
//           child: Stack(
//             children: <Widget>[
//               Align(
//                   alignment: Alignment.center,
//                   child: _getWidgetFromContent(card.question, false)),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: Text(
//                     S.of(context).meta_question,
//                     style: Theme.of(context).textTheme.caption,
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: isEditing
//                     ? Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           IconButton(
//                             icon: Icon(Icons.add_photo_alternate,
//                                 color: Colors.grey),
//                             onPressed: () async {
//                               final image =
//                                   await ImagesUtil.pickImageFromGallery();
//                               if (image != null) {
//                                 setState(() {
//                                   card = card.copyWith(
//                                       question: ImageFile(
//                                           uniqueId: UniqueId(), file image));

//                                   onUpdateCard(card);
//                                 });
//                               }
//                             },
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.text_fields, color: Colors.grey),
//                             onPressed: () async {
//                               setState(() async {
//                                 card = card.copyWith(
//                                     question: TextFile(
//                                         uniqueId: UniqueId(),
//                                         file: await TextFileFactory().create(card.id.getOrCrash)),);
//                                 onUpdateCard(card);
//                               });
//                             },
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.brush, color: Colors.grey),
//                             onPressed: () {},
//                           )
//                         ],
//                       )
//                     : Spacer(
//                         flex: 1,
//                       ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           width: MediaQuery.of(context).size.width - 32,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               isEditing
//                   ? IconButton(
//                       icon: Icon(Icons.delete, color: Colors.black),
//                       onPressed: widget.onDeleteCard,
//                     )
//                   : Container(),
//             ],
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: <Widget>[
//               _questionCard(context),
//               _answerCard(context),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
