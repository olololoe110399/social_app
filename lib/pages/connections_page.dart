import 'package:flutter/material.dart';
import 'package:social_app/pages/profile_page.dart';

class ConnectionsPage extends StatelessWidget {
  const ConnectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                  ),
                  child: Text(
                    'Connections',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    top: 3,
                  ),
                  child: Text(
                    '275 Total',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  minLines: 1,
                  maxLines: 1,
                  autocorrect: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: '   Search Contacts . . . .',
                    hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    filled: true,
                    fillColor: Colors.grey[200],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey[400] ?? Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Socio',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey[400] ?? Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Trend',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey[400] ?? Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Slack',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey[400] ?? Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '#Designer',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                top: 30,
              ),
              child: Text(
                'A',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage(),
                );

                Navigator.of(context).push(route);
              },
              child: ListTile(
                leading: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(140),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1470165/pexels-photo-1470165.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'Alan Patterson',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Software Engineer At Google',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://ggsc.s3.amazonaws.com/images/made/images/uploads/Six_Ways_to_Speak_Up_Against_Bad_Behavior_350_235_s_c1.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Adam Mathew',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Life Science Engineer At Microsoft',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.insider.com/5f46d58ccd2fec00296a46b9?width=1136&format=jpeg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Amaz Benzos',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Simple Guy At Amazon',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                top: 30,
              ),
              child: Text(
                'B',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/11/virat-kohli-1574240907.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Birat Kholi',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Leg Square Engineer At Cricket',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Bengel Priya',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Software Engineer At Google',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                top: 30,
              ),
              child: Text(
                'C',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg',
                    ),
                  ),
                ),
              ),
              title: Text(
                'Cat Dog',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Meow Engineer At House',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
