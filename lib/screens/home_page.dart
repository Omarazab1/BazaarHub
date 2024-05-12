import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:store/components/cart_details_view_card.dart';
import 'package:store/constants.dart';
import 'package:store/controllers/home_controller.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_product_service.dart';
import 'package:store/widgets/custom_card.dart';
import 'package:store/widgets/custom_drawer.dart';

import '../components/cart_details_view.dart';
import '../components/cart_short_view.dart';
import 'details_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  static String id = 'HomePAge';
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final controller = HomeController();

  void _onVerticalGesture(DragUpdateDetails details) {
    print(details.primaryDelta);
    if (details.primaryDelta! < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.list,
              color: Colors.black,
              size: 35,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              FontAwesomeIcons.amazon,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: bgColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: const Color(0xffeaeaea),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) => LayoutBuilder(
              builder: (context, constraints) => Stack(
                children: [
                  AnimatedPositioned(
                    duration: panelTransition,
                    top: controller.homeState == HomeState.normal
                        ? 0
                        : -(constraints.maxHeight - cartBarHeight * 0.8),
                    left: 0,
                    right: 0,
                    height: constraints.maxHeight - cartBarHeight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding, vertical: 60),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            defaultPadding * 1.5,
                          ),
                          bottomRight: Radius.circular(
                            defaultPadding * 1.5,
                          ),
                        ),
                      ),
                      child: FutureBuilder<List<ProductModel>>(
                        future: AllProductsService().getAllProducts(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<ProductModel> products = snapshot.data!;
                            return GridView.builder(
                                itemCount: products.length,
                                clipBehavior: Clip.none,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.5,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 100,
                                ),
                                itemBuilder: (context, index) {
                                  return CustomCard(
                                    product: products[index],
                                    press: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          transitionDuration: panelTransition,
                                          reverseTransitionDuration:
                                              panelTransition,
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              FadeTransition(
                                            opacity: animation,
                                            child: DetailsScreen(
                                              product: products[index],
                                              onProductAdd: () {
                                                controller.addProductToCart(
                                                    products[index]);
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                });
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: panelTransition,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: controller.homeState == HomeState.normal
                        ? cartBarHeight
                        : (constraints.maxHeight - cartBarHeight),
                    child: GestureDetector(
                        onVerticalDragUpdate: _onVerticalGesture,
                        child: Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          color: const Color(0xffeaeaea),
                          alignment: Alignment.topLeft,
                          child: AnimatedSwitcher(
                              duration: panelTransition,
                              child: controller.homeState == HomeState.normal
                                  ? CardShortView(controller: controller)
                                  : CartDetailsView(controller: controller)),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
