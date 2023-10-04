import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import 'support_model.dart';

class BloodType extends StatelessWidget {
  const BloodType({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Blood Type',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF000000),
                fontSize: 20,
              ),
            ),
          ),
          body: ListView(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Blood type diets, popularized by Dr. Peter J. D’Adamo’s book “Eat Right 4 Your Type,” suggest that different blood types should consume specific types of food for optimal health. According to D'Adamo, certain foods can be beneficial, neutral, or harmful for different blood types.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppians',
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ),
              ExpansionTileCard(
                elevation: 5,
                subtitle: const Text('Beneficial Foods'),
                title: const Text('Blood Type O'),
                children: [
                  SizedBox(height: size * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                            '- High-protein foods: beef, lamb, mutton, veal, and venison'),
                        const Text(
                            '- Certain fish: cod, herring, and mackerel'),
                        const Text('- Vegetables: kale, spinach, and broccoli'),
                        const Text('- Limited fruits'),
                        SizedBox(height: size * 0.01),
                        const Text(
                          '- Foods to Avoid',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: size * 0.01),
                        const Text(
                            '- Grains, especially gluten-containing ones: wheat, barley, and rye.'),
                        const Text('- Legumes: lentils, beans, peanuts'),
                        const Text('- LDairy and eggs.'),
                        const Text(
                            '- Certain vegetables: cabbage, cauliflower, and mustard greens.'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size * 0.02),
              ExpansionTileCard(
                elevation: 5,
                subtitle: const Text('Beneficial Foods'),
                title: const Text('Blood Type A'),
                children: [
                  SizedBox(height: size * 0.01),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('- Vegetarian-based diet.'),
                        const Text('- Grains: buckwheat, amaranth.'),
                        const Text('- Vegetables: kale, broccoli, and garlic.'),
                        const Text('- Fruit: most, especially berries.'),
                        const Text('Vegetables: kale, spinach, and broccoli'),
                        const Text(
                            '- Legumes: black beans, azuki beans, lentils.'),
                        SizedBox(height: size * 0.01),
                        const Text(
                          '- Foods to Avoid',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: size * 0.01),
                        const Text('- Meat, especially red meat.'),
                        const Text('- Dairy products.'),
                        const Text('- Kidney beans, lima beans.'),
                        const Text(
                            '- Certain vegetables: cabbage, bell peppers, and eggplant.'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size * 0.02),
              ExpansionTileCard(
                elevation: 5,
                subtitle: const Text('Beneficial Foods'),
                title: const Text('Blood Type B'),
                children: [
                  SizedBox(height: size * 0.01),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('- Dairy: milk, cheese, and yogurt.'),
                        const Text(
                            '- Meat: goat, lamb, mutton, rabbit, and venison.'),
                        const Text('- Fish: cod, salmon, and sardines.'),
                        const Text('- Grains: rice, oatmeal.'),
                        const Text(
                            '- Vegetables: green leafy ones, carrots, and parsnips.'),
                        SizedBox(height: size * 0.01),
                        const Text(
                          '- Foods to Avoid',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: size * 0.01),
                        const Text(
                            '- Corn, lentils, peanuts, and sesame seeds.'),
                        const Text('- Certain meats: chicken, pork, and duck.'),
                        const Text('- Shellfish.'),
                        const Text(
                            '- Tomatoes, olives, pumpkin, and radishes.'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size * 0.02),
              ExpansionTileCard(
                elevation: 5,
                subtitle: const Text('Beneficial Foods'),
                title: const Text('Blood Type AB'),
                children: [
                  SizedBox(height: size * 0.01),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                            '- Tofu, fish, dairy, and green vegetables.'),
                        const Text('- Lamb, mutton, rabbit, and turkey.'),
                        const Text('- Fish: cod, salmon, and sardines.'),
                        const Text('- Grains: rice, oats.'),
                        const Text('- Fruits: plums, berries, and bananas.'),
                        SizedBox(height: size * 0.01),
                        const Text(
                          '- Foods to Avoid',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: size * 0.01),
                        const Text('- Red meat.'),
                        const Text('- Kidney beans, lima beans, corn.'),
                        const Text('- Seeds and buckwheat.'),
                        const Text('- Chicken, beef, and pork.'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
