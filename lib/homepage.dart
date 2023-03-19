import 'package:app/util/job_card.dart';
import 'package:app/util/prediction_results.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ['Uberooooo', 'Egg production', 'lib/icons/egg.png', 45],
    ['Google', 'Tempurature', 'lib/icons/temperature.png', 85],
    ['Apple', 'humedity', 'lib/icons/temp.png', 95],
  ];

  final List predictions = [
    [
      'Tempurature',
      'Try to keep this 12-16 range',
      'lib/icons/temperature.png',
      20
    ],
    ['humedity', 'Try to keep this 12-16 range', 'lib/icons/temp.png', 95],
    ['Egg production', 'this is optimal value', 'lib/icons/egg.png', 44],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // grey[200]
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 55,
          ),
          //appBar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Image.asset(
                'lib/icons/menu_left.png',
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          //decover a new path

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Hi Good Moring ..',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          child: Image.asset('lib/icons/search.png'),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search what you want know..',
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  child: Image.asset(
                    'lib/icons/preferences.png',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          //for you job cards

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Current Status of Poultry Hub',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 160,
            color: Colors.white,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  hourlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),

          //Predection Details View

          const SizedBox(
            height: 30,
          ),

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Future Predections',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView.builder(
              itemCount: predictions.length,
              itemBuilder: (context, index) {
                return PredectionsResults(
                  predicType: predictions[index][0],
                  result: predictions[index][1],
                  lableImagePath: predictions[index][2],
                  predicValue: predictions[index][3],
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
