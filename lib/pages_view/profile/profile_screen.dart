import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/models/posts_model.dart';
import 'package:casa_app/pages_view/catalogue/sliver_appbar_delegate.dart';
import 'package:casa_app/pages_view/profile/save_posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'analitic_panel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    double heightOfEveryPhoto = screenSize.width/3;

    double countOfPhotoRows = postsList.length/3;
    int roundedCountOfPhotoRows = countOfPhotoRows.ceil();

    return Scaffold(
      backgroundColor: CasaColors.whiteBackground,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
              delegate: SliverAppbarDelegate(
                minHeight: 105,
                maxHeight: 105,
                child: Container(
                  color: CasaColors.whiteBackground,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 27, right: 27, top: 70, bottom: 5),
                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                    'assets/svg_icons/profile_icons/menu.svg'
                                ),
                                Text(
                                  'Li.Ivanova',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SvgPicture.asset(
                                    'assets/svg_icons/profile_icons/settings.svg'
                                ),
                              ],
                            ),

                      ),
                    ],
                  ),
                )
              )
          ),
          SliverPersistentHeader(
              delegate: SliverAppbarDelegate(
                maxHeight: screenSize.height + (heightOfEveryPhoto)*(roundedCountOfPhotoRows-3) + kBottomNavigationBarHeight,
                minHeight: screenSize.height + (heightOfEveryPhoto)*(roundedCountOfPhotoRows-3) + kBottomNavigationBarHeight,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 27, right: 27),
                      child: Column(
                        children: [
                          const SizedBox(height: 30,),
                          const CircleAvatar(
                            radius: 43,
                            backgroundImage: AssetImage('assets/profile_photo/avatar.png'),
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black,
                          ),
                          const SizedBox(height: 30,),
                          const AnaliticPanel(),
                          const SizedBox(height: 30,),
                          SizedBox(
                            width: screenSize.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Styliste Lili Ivanova - Paris, France ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  ),),
                                SizedBox(height: 10,),
                                Text('• personal stylist\n• vintage & elegance\n• the best finds in the fashion world',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14
                                  ),),
                                const SizedBox(height: 15,),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg_icons/profile_icons/link.svg',
                                      color: CasaColors.linkColor,
                                    ),
                                    const SizedBox(width: 10),
                                    Text('liivanova.com',
                                      style: TextStyle(
                                          color: CasaColors.linkColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          const Divider(
                            color: CasaColors.dividerGrey,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                            children: [
                              TabBar(
                                isScrollable: false,
                                tabs:  [
                                  Tab(text: AppLocalizations.of(context)!.posts, icon: SvgPicture.asset('assets/svg_icons/profile_icons/posts.svg'),),
                                  Tab(text: AppLocalizations.of(context)!.video, icon: SvgPicture.asset('assets/svg_icons/profile_icons/video.svg'),),
                                  Tab(text: AppLocalizations.of(context)!.products, icon: SvgPicture.asset('assets/svg_icons/saved_tab_icons/products.svg'),),
                                ],
                                tabAlignment: TabAlignment.fill,
                                labelColor: CasaColors.textSearchGrey,
                                labelStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12
                                ),
                                indicatorColor: CasaColors.textSearchGrey,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorWeight: 1.5,
                                dividerHeight: 0,
                                splashFactory: NoSplash.splashFactory,
                                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                      return states.contains(MaterialState.focused) ? null : Colors.transparent;
                                    }
                                ),
                              ),
                              const Expanded(
                                  child: TabBarView(
                                    children: [
                                      SavedProfilePosts(),
                                      SavedProfilePosts(),
                                      SavedProfilePosts(),

                                    ],
                                  )),

                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ))
        ],
      )
      // SingleChildScrollView(
      //   physics: const AlwaysScrollableScrollPhysics(),
      //   child: SizedBox(
      //     height: screenSize.height + 150,
      //     child: Column(
      //       children: [
      //         Container(
      //           margin: const EdgeInsets.only(left: 27, right: 27, top: 70),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     SvgPicture.asset(
      //                         'assets/svg_icons/profile_icons/menu.svg'
      //                     ),
      //                     Text(
      //                         'Li.Ivanova',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.w500
      //                       ),
      //                     ),
      //                     SvgPicture.asset(
      //                         'assets/svg_icons/profile_icons/settings.svg'
      //                     ),
      //                   ],
      //                 ),
      //               const SizedBox(height: 30,),
      //               const CircleAvatar(
      //                 radius: 43,
      //                 backgroundImage: AssetImage('assets/profile_photo/avatar.png'),
      //                 backgroundColor: Colors.transparent,
      //                 foregroundColor: Colors.black,
      //               ),
      //               const SizedBox(height: 30,),
      //               const AnaliticPanel(),
      //               const SizedBox(height: 30,),
      //               SizedBox(
      //                 width: screenSize.width,
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text('Styliste Lili Ivanova - Paris, France ',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.w500,
      //                       fontSize: 14
      //                     ),),
      //                     SizedBox(height: 10,),
      //                     Text('• personal stylist\n• vintage & elegance\n• the best finds in the fashion world',
      //                       style: TextStyle(
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 14
      //                       ),),
      //                     const SizedBox(height: 15,),
      //                     Row(
      //                       children: [
      //                         SvgPicture.asset(
      //                           'assets/svg_icons/profile_icons/link.svg',
      //                           color: CasaColors.linkColor,
      //                         ),
      //                         const SizedBox(width: 10),
      //                         Text('liivanova.com',
      //                           style: TextStyle(
      //                               color: CasaColors.linkColor,
      //                               fontWeight: FontWeight.w400,
      //                               fontSize: 14
      //                           ),),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(height: 15,),
      //               const Divider(
      //                 color: CasaColors.dividerGrey,
      //               ),
      //
      //
      //             ],
      //           ),
      //         ),
      //         Expanded(
      //             child: DefaultTabController(
      //               length: 3,
      //               child: Column(
      //                 children: [
      //                   TabBar(
      //                     isScrollable: false,
      //                     tabs:  [
      //                       Tab(text: AppLocalizations.of(context)!.posts, icon: SvgPicture.asset('assets/svg_icons/profile_icons/posts.svg'),),
      //                       Tab(text: AppLocalizations.of(context)!.video, icon: SvgPicture.asset('assets/svg_icons/profile_icons/video.svg'),),
      //                       Tab(text: AppLocalizations.of(context)!.products, icon: SvgPicture.asset('assets/svg_icons/saved_tab_icons/products.svg'),),
      //                     ],
      //                     tabAlignment: TabAlignment.fill,
      //                     labelColor: CasaColors.textSearchGrey,
      //                     labelStyle: const TextStyle(
      //                         fontWeight: FontWeight.w600,
      //                         fontSize: 12
      //                     ),
      //                     indicatorColor: CasaColors.textSearchGrey,
      //                     indicatorSize: TabBarIndicatorSize.tab,
      //                     indicatorWeight: 1.5,
      //                     dividerHeight: 0,
      //                     splashFactory: NoSplash.splashFactory,
      //                     overlayColor: MaterialStateProperty.resolveWith<Color?>(
      //                             (Set<MaterialState> states) {
      //                           return states.contains(MaterialState.focused) ? null : Colors.transparent;
      //                         }
      //                     ),
      //                   ),
      //                   const Expanded(
      //                       child: TabBarView(
      //                         children: [
      //                           SavedProfilePosts(),
      //                           SavedProfilePosts(),
      //                           SavedProfilePosts(),
      //
      //                         ],
      //                       ))
      //                 ],
      //               ),
      //             )
      //         ),
      //
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
