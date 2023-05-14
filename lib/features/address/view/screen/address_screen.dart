import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/textFormField/search_text_field.dart';
import 'package:sizer/sizer.dart';

class LocationUpdateScreen extends StatefulWidget {
  const LocationUpdateScreen({super.key});

  @override
  LocationUpdateScreenState createState() => LocationUpdateScreenState();
}

class LocationUpdateScreenState extends State<LocationUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    LatLng _initialPosition = const LatLng(37.7749, -122.4194);
    double _initialZoom = 12;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  backgroundColor: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext c) {
                    return AddressBottomSheet(
                        initialPosition: _initialPosition,
                        initialZoom: _initialZoom);
                  },
                );
              },
              child: const Text('Open Bottom Sheet'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  backgroundColor: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext c) {
                    return AddNewAddress(
                        initialPosition: _initialPosition,
                        initialZoom: _initialZoom);
                  },
                );
              },
              child: const Text('Open Bottom Sheet 2'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  backgroundColor: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext c) {
                    return const ProductDetails();
                  },
                );
              },
              child: const Text('Open Product Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressBottomSheet extends StatelessWidget {
  const AddressBottomSheet({
    super.key,
    required LatLng initialPosition,
    required double initialZoom,
  })  : _initialPosition = initialPosition,
        _initialZoom = initialZoom;

  final LatLng _initialPosition;
  final double _initialZoom;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 85.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  const Text(
                    "Update Your Location",
                    style: TextStyle(
                        color: Color(0xff041421),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Color(0xffA72622),
                      size: 19,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              height: 0.2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    '${AppConstant.assetImages}mylocation.svg',
                    height: 2.5.h,
                  ),
                ),
                const Text(
                  "Use my current location",
                  style: TextStyle(
                    color: Color(0xff041421),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50.h,
              width: 100.w,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _initialPosition,
                  zoom: _initialZoom,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  backgroundColor: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext c) {
                    return const AddNewAddress(
                        initialPosition: LatLng(37.7749, -122.4194),
                        initialZoom: 12);
                  },
                ),
                child: Container(
                  height: 35,
                  width: 150,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: const Color(0xffA72622),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        'Add New Location',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 8.h,
                width: 100.w,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: index == 0
                        ? const Color(0xffA72622).withOpacity(0.2)
                        : Colors.white,
                    child: Row(
                      children: [
                        Icon(
                          index == 0
                              ? Icons.radio_button_checked_rounded
                              : Icons.radio_button_off_outlined,
                          color: index == 0 ? Color(0xffA72622) : Colors.black,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "904 Saima Unique Block L",
                          style: TextStyle(
                              color:
                                  index == 0 ? Color(0xffA72622) : Colors.black,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({
    super.key,
    required LatLng initialPosition,
    required double initialZoom,
  })  : _initialPosition = initialPosition,
        _initialZoom = initialZoom;

  final LatLng _initialPosition;
  final double _initialZoom;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 85.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  const Text(
                    "Add New Location",
                    style: TextStyle(
                        color: Color(0xff041421),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Color(0xffA72622),
                      size: 19,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              height: 0.2,
            ),
            Expanded(
              child: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: _initialPosition,
                      zoom: _initialZoom,
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SearchTextField(),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: SvgPicture.asset(
                            '${AppConstant.assetImages}mylocation.svg',
                            height: 2.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: const Color(0xffA72622),
                          minimumSize: const Size(double.infinity, 40),
                        ),
                        onPressed: () {},
                        child: const Text('Confirm'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 87.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  const Text(
                    "Product Title",
                    style: TextStyle(
                        color: Color(0xff041421),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Color(0xffA72622),
                      size: 19,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              height: 0.2,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Color(0xffFBFBFB),
              child: const Center(
                child: Image(
                  image: AssetImage('${AppConstant.assetImages}shampoo.png'),
                  fit: BoxFit.contain,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Product Title",
                style: TextStyle(
                    color: Color(0xff041421),
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "21.00 PKR",
                style: TextStyle(
                    color: Color(0xff6B829D),
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Description",
                style: TextStyle(
                    color: Color(0xff041421),
                    fontSize: 19,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                """The longer the better! this exclusive formula with biotin, deeply nourishes the hair from the root to tip & keps it healthy as it grows. Enjoy hair that's healthy shine and longer.""",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xff6B829D),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Variation",
                style: TextStyle(
                  color: Color(0xff064769),
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            FilterButton(
              title: "Almond",
              selected: true,
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Sizes",
                style: TextStyle(
                  color: Color(0xff064769),
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            FilterButton(
              title: "100 ml",
              selected: false,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color(0xff064769),
                  minimumSize: Size(double.infinity, 35),
                ),
                onPressed: () {},
                child: const Text('Add To Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String title;
  final bool selected;
  const FilterButton({super.key, required this.title, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: selected ? const Color(0xff064769) : Color(0xffF1F1F1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Text(
          title,
          style: TextStyle(
              color: selected ? Colors.white : Color(0xff064769), fontSize: 12),
        ),
      ),
    );
  }
}
