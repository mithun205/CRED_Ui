import 'package:cred_assignment/pages/page_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  _Page_2State createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  bool isGridView = true;

  void toggleView() {
    setState(() {
      isGridView = !isGridView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Text(
              "explore",
              style: GoogleFonts.poppins(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CRED",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: toggleView, // Function to toggle between grid and list view
                      child: SizedBox(
                        height: 25,
                        width: 50,
                        child: Image.asset(
                          isGridView ? 'assets/button_1.png' : 'assets/button_2.png',
                          fit: BoxFit.cover, // This will ensure the image fits the container
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 20,),
                    
                    Container(
                      height: 20,width: 20,
                      decoration: BoxDecoration(border:Border.all(
                        color: Colors.white,
                        width: 0.2
                      ) ),
                      child: const Center(child: Text("v",style: TextStyle(color: Colors.white),)),
                       
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: isGridView
                    ? const GridViewBuilderSection()
                    : const ListViewBuilderSection(),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class GridViewBuilderSection extends StatelessWidget {
  const GridViewBuilderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoneySection(),
          SizedBox(height: 15),
          BenefitsSection(),
          SizedBox(height: 15),
          BillsSection(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

// listview builder



class ListViewBuilderSection extends StatelessWidget {
  const ListViewBuilderSection({super.key});

  // Navigate to page_1
  void _navigateToPage1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page_1()), // Replace with your Page1 widget
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const SectionTitle(title: 'MONEY'),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/01.png')),
              title: Text(
                'mint',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'grow your savings, 3x faster',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/02.png')),
              title: Text(
                'bank accounts',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'check your bank balance',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/03.png')),
              title: Text(
                'Scan n Pay',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'ability to scan n pay on UPI QRs',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const SectionTitle(title: 'BENEFITS'),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/04.png')),
              title: Text(
                'rewards',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'redeem coins for cashbacks, discounts and more',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/05.png')),
              title: Text(
                'refer & earn',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'assured cashbacks for bringing friends to CRED',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/06.png')),
              title: Text(
                'coins',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'use coins to claim rewards and other perks',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/07.png')),
              title: Text(
                'vouchers',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'use coins to claim rewards and other perks',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/08.png')),
              title: Text(
                'brand offers',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'use vouchers to claim rewards and other perks',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const SectionTitle(title: 'BILLS'),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/09.png')),
              title: Text(
                'utility & all bills',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'the most rewarding way to pay your bills',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/10.png')),
              title: Text(
                'credit card bills',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'pay your credit card bills instantly',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/11.png')),
              title: Text(
                'house rent',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'pay rent with your credit card',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateToPage1(context),
            child: const ListTile(
              leading: Image(image: AssetImage('assets/12.png')),
              title: Text(
                'education fees test',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'pay education fees test',
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class MoneySection extends StatelessWidget {
  const MoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.pushReplacementNamed(context, "/page 1");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'MONEY'),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 0,
              childAspectRatio: 1,
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              final titles = ['mint', 'bank accounts', 'Scan n Pay'];
              final imagePaths = ['assets/01.png', 'assets/02.png', 'assets/03.png'];
              return MoneyCard(imagePath: imagePaths[index], title: titles[index]);
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class BenefitsSection extends StatelessWidget {
  const BenefitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.pushNamed(context, "/page 1");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'BENEFITS'),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 0,
              childAspectRatio: 1,
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              final titles = ['rewards', 'refer & earn', 'coins', 'vouchers', 'brand offers'];
              final imagePaths = ['assets/04.png', 'assets/05.png', 'assets/06.png', 'assets/07.png', 'assets/08.png'];
              return MoneyCard(imagePath: imagePaths[index], title: titles[index]);
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class BillsSection extends StatelessWidget {
  const BillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.pushReplacementNamed(context, "/page 1");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'BILLS'),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 0,
              childAspectRatio: 1,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              final titles = ['utility & all bills', 'credit card bills', 'house rent', 'education fees'];
              final imagePaths = ['assets/09.png', 'assets/10.png', 'assets/11.png', 'assets/12.png'];
              return MoneyCard(imagePath: imagePaths[index], title: titles[index]);
              
            },
          ),
          //SizedBox(height: 20,)
        ],
        
      ),
    );
    
  }
}

class MoneyCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const MoneyCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.pushReplacementNamed(context, "/page 1");
      },
      child: Column(
        children: [
          Container(
            height: 75,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
             child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        color: Colors.white54,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}