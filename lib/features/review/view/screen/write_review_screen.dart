import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/utils/app_constant.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Rate Your Experience for',
              style: TextStyle(
                color: Color(0xff041421),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [1, 2, 3, 4, 5]
                      .map(
                        (e) => Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: e == 1 ? 0 : 5),
                          child: RatingSelection(
                            rating: "$e",
                            selected: e == 1,
                          ),
                        ),
                      )
                      .toList(),
                ),
                const Text(
                  "Horrible 🤬",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF6B829D),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffE8E8E8),
              thickness: 1.5,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Add Photo',
              style: TextStyle(
                color: Color(0xff041421),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffF1F1F1),
                border: Border.all(color: const Color(0xFFD1DBE2), width: 2),
              ),
              child: Center(
                child: SvgPicture.asset(
                  '${AppConstant.assetImages}camera.svg',
                  height: 35,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Write Review',
              style: TextStyle(
                color: Color(0xff041421),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffF1F1F1),
                border: Border.all(color: const Color(0xFFD1DBE2), width: 2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Tell us more about your overall experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6B829D),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: const Color(0xff064769),
                  minimumSize: const Size(double.infinity, 40),
                ),
                onPressed: () {},
                child: const Text('Submit Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingSelection extends StatelessWidget {
  final String rating;
  final bool selected;
  const RatingSelection({
    super.key,
    required this.rating,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: selected ? const Color(0xffA72622) : const Color(0xFFFFFFF),
          border: Border.all(
              color:
                  selected ? const Color(0xffA72622) : const Color(0xFF6B829D),
              width: 1)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              rating,
              style: TextStyle(
                color: selected ? Colors.white : const Color(0xFF6B829D),
                fontSize: 12,
              ),
            ),
            Text(
              "★",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selected ? Colors.white : const Color(0xFF6B829D),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
