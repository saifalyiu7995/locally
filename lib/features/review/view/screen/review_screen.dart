import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/features/review/view/screen/write_review_screen.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Write Review',
                        style: TextStyle(
                          color: Color(0xff041421),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Share your experience to help others',
                        style: TextStyle(
                          color: Color(0xFF6B829D),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () =>
                        AppNavigation.navigateTo(AppNavRoutes.writeReviewRoute),
                    child: const Icon(
                      Icons.edit_note_rounded,
                      color: Color(0xffA72622),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (false) ...[
              SizedBox(
                height: 25.h,
              ),
              SvgPicture.asset('${AppConstant.assetImages}review.svg'),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: Text(
                  'No Review Be The First One To Review This Merchant',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF041421),
                    fontSize: 16,
                  ),
                ),
              ),
            ] else ...[
              Expanded(
                child: ListView.builder(
                  itemCount: 9,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: ReviewCard(),
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 4),
              spreadRadius: 0,
              color: const Color(0xFF6B829D).withOpacity(0.3))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/639503774/photo/portrait-of-a-beautiful-young-woman-with-long-blond-hair.jpg?s=170667a&w=0&k=20&c=eWkyK_QixkjoXG76A7ZQSpeK6A3xLfl81lMUcmOYIzM="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Sarah ',
                            style: TextStyle(
                              color: Color(0xff064769),
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: 'wrote a ',
                            style: TextStyle(
                              color: Color(0xffB2C0CD),
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: '3 star review',
                            style: TextStyle(
                              color: Color(0xff064769),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'From Karachi',
                      style: TextStyle(
                        color: Color(0xFF6B829D),
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: RatingSelection(rating: "3", selected: true),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'They offer an awesome range of fresh pizzas. I liked dining here. Staff members are always friendly, prices are reasonable and the spot is always kept clean.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xFF6B829D),
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image:
                      AssetImage('${AppConstant.assetImages}chicken_shop.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                '20 days ago',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xFF6B829D),
                  fontSize: 12,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Divider(
                color: Color(0xFF6B829D),
                thickness: 0.3,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  '${AppConstant.assetImages}like.svg',
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Helpful',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0xFF6B829D),
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
