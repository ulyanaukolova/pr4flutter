import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        toolbarHeight: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/411a/8032/eef6a961087128f935480d92d422c2e5?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bpz7Nsr-y4BtAUUTLQXGZOflTleHcWYBQiCOF1dKEmRVL2jwvXwVJpoJIIMCsMaz8RePTrTZs7Pab40TMI-Jst38MEdiW4vN-Y5km8qy7c~REOSdwuEeCMzk1WXJq2zdRp6MT~z3kFmxx4QYOQiedmr7BlK~J4-akqH4vKFpb2Aj1f2-4B495aXQMGGcgScY60p-wqwxbXO-ga9kmoMgRWGg0wjtp4ugxDtLM2lnIjYMpgTP-fYc3LYUIU6mKI2oVy4biRAd47m3V9zF~F~8jR1TAQyv0uSIs6mu8xBw9eaJHpMfRXV0aUgV4l1z9Wp5NqrUWXXwP4~RRuhd~mDhBg__'), // Временная картинка
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Evening!",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "Dan Smith",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[100],
                      backgroundImage: AssetImage('lib/img/lup.png'), 
                    ),
                    SizedBox(width: 12),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[100],
                      backgroundImage: AssetImage('lib/img/calo.png'), 
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Weekly Tasks",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "18 Tasks Pending",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                  Icon(Icons.tune, color: Colors.black, size: 28), 
                  Container(
                    height: 24, 
                    child: VerticalDivider(
                      color: Colors.grey, 
                      thickness: 1, 
                      width: 20, 
                    ),
                  ),
                  Icon(Icons.add, color: Colors.black, size: 28), 
                  ],
                  ),
              ],
            ),
            SizedBox(height: 12),

            SizedBox(
              height: 213, 
              child: ListView(
                scrollDirection: Axis.horizontal, 
                children: [
                  TaskCardType1(
                    title: "Create a \nLanding Page\n",
                    category: "UI/UX Design",
                    categoryColor: const Color.fromARGB(255, 133, 54, 243),
                    categoryBorderColor: const Color.fromARGB(19, 121, 36, 239),
                    priority: "High",
                    priorityColor: const Color.fromARGB(25, 239, 50, 36),
                    priorityBorderColor: const Color.fromARGB(255, 239, 50, 36),
                    date: "Mon, 12 July 2022",
                    memberImages: [
                      "https://s3-alpha-sig.figma.com/img/475b/9580/3e4017abe68d54ffa45463834d9b6a71?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oO1yjV6jnd8kt3OyRczj7sj3L2pMCqM0lZtsLiDLqgH4H7eknXRSdidgD6rUOXEDVzxfHGTgmYu86gFqXvsv3FKJbSHjTwJi42ogffX-3Y-11Z~FO2atdqkHuiAjsN9LEWlnTBeSkLLnojCY4XK9qlhYavaUIFlVUNMSF338uHwII5XNl5rgioJ6EBkvNZ~q8Kuqrr1ieeWHN8~Odd~KD3AlB79iaaneAY3NC-Nojr3ZOnMt~HFuCvMJqHRyYOiI3SKsJ~o6OwmUiJgzcACx5BFiFUT4SddvTT6zY3Kk1krrVicNX7tGagsad1Lf8v2Kjy2IShPQSug7HXqJATIp9g__",
                      "https://s3-alpha-sig.figma.com/img/e275/c444/3dec0926aef32133af195e1f189e2b89?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SsGMvlLZVseP2rkGzZzEFblYcAwAiZxMvjxIOPUyNeUlZO8SYmSNb~xK6laLsZtAtAW6e9PTBpgoUu3-xslH4preho19y0z-iF3gSXOC4aR1N4qGKbfq3JQikE9XpiV72n~CGK2bZVjDZc5cJky-vWK35vebhkhSQi4ScfQi-p8AfZ1Hly6FBBPlaCuKCdm4uCEEEU-6YMba0jrvURKZ5C0QjWZzQtlz5jQx~h1oxaxkGYLoaHC6XH-dd39deeIyjYC1dEG6vjxIQvT08T2U2VbkyWFeee6Vl0ZgHASSDJWsULpuISDSviY1gKpRhP3IGkX~b0yZSTejBudHziwYjw__"
                    ],
                    extraMembers: 3,
                  ),
                  SizedBox(width: 10), 
                  TaskCardType1(
                    title: "Develop a \nWebsite",
                    category: "Development",
                    categoryColor: const Color.fromARGB(255, 215, 138, 30),
                    categoryBorderColor: const Color.fromARGB(37, 239, 154, 36),
                    priority: "Low",
                    priorityColor: const Color.fromARGB(35, 112, 255, 117),
                    priorityBorderColor: const Color.fromARGB(255, 17, 157, 14),
                    date: "Mon, 30 July 2022",
                    memberImages: [
                      "https://s3-alpha-sig.figma.com/img/a27b/b91a/fb0ec304610b4834f08a60cec93a7a06?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WzxErHtaFgJQWzf1VN7YsbHtZuWyzR96aqVvab6q6kFbvj~We5z8CxNZmi9KuHNSn~Us~Ql~N74wGeQA7GvqWwgbzrtWXf50QFgS55nBiKadKqX0kA-dxBvoPSyHx8VmG0So3XlEQ-Ipvoc8BNBzpw3Ym7jjPWDqyWRQGRwp13GJFY9aqQ5ihkYft06HjeZXAsJaHpUutqodTV9q6g6wvU0qYqL3ZyBcN4ix24tl3t1bhlAj~2fy-bpjVL9u~IfeCaPzAyxcPDY2-GM~9PuFuqUN~sfolJ-~GgfpLZVd7tsx7P04sl0kBbWKIGden0fLVO0LO6p9nzACklYZT7GXUg__",
                      "https://s3-alpha-sig.figma.com/img/b221/2c20/7602db8f36dce8dc84350cae37d0e2e2?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lfYwwf6AV0bO6UNPehFETuWtUAapMklE64ETL1lBrCAdLTrX7HAV-8V~LY2eyBarqqgOeKgdJd5Qe-JXFpccNe9DVp9BWpsIO-LhMGMy-bklerdF~3Ge201tPw07JHT8KbxJWzmyC1V-qHciWXZrkVX4DcHEkX4PuN3mfE0QaLQpWnX9owGcyUseKrHErbR~pWiNQH1bOWfbn7hYdng498JTbOzhFpRkzwQIzzBg2EK-taA71JIOfb1-YnZ61fykDjfFRQwATqPLKmAwaN3tQS4521uSvDa~Hy3hw2pYKkNoi5v~z0xhvg9bsnHMUWE2~3gzX-SVTv15WfIQYrVhCw__"
                    ],
                    extraMembers: 2,
                  ),
                ],
              ),
            ),

            SizedBox(height: 25), 

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's Tasks",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "18 Tasks Pending",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                  Icon(Icons.tune, color: Colors.black, size: 28), 
                  SizedBox(height: 6),
                  Container(
                    height: 24, 
                    child: VerticalDivider(
                      color: Colors.grey, 
                      thickness: 1, 
                      width: 20, 
                    ),
                  ),
                  SizedBox(height: 6),
                  Icon(Icons.add, color: Colors.black, size: 28), 
                  ],
                  ),
              ],
            ),
            SizedBox(height: 12),

            TaskCardType2(
              title: "Design 2 App Screens",
              description: "Crypto Wallet App",
              date: "Mon, 10 July 2022",
              memberImages: [
                "https://s3-alpha-sig.figma.com/img/269e/5049/827226cd34abbea3208baebef795229f?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UIVuGvNuPCRQSuo98zja8dUY-icKgoL52G1bcTYZGO~QvkGhTnv88dQPrOYa-gqqjjfrNsQjgE7PDZq7ELAbr3ilwA9MZN3YT9WqQdlr8jGB2mn6hj7yU~-bltuJmmPhJL7kcU38oThV5NZHKa6XHwraov~EQOZFcvROEJ4O6avAjGo7Il5GYwr268v8ug8QVhMSm0PnZ3AvprbOIZPrY20z-2In9elcGPJzfsApUXhU3HH~kI~hQJDqX40b1pFcVCxlmoybgKun9Jbg9yTDQFbwge95OzJFjvz2cT9S04lXZty-EHSugJG7TaPNt464if88zi4m4in5Qti7xHUFmA__",
                "https://s3-alpha-sig.figma.com/img/b23d/1d74/5ac82bca67c49978920a441eed7ac936?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=f34WowHoSspdE2d6AC2gKa8srEnS2LfsX-MwXKHy6u~6shH5A6ILQfsE4PjOl6f-KpHxJ2Lv25u4WuFhaTOY18H1Z~76QhSWhfUgswJiOKZcRVOUkeLwIOiaOpL4woLnpx~KUMIF~hc1v41XqqKrTvtDhA7-JHG2WfZvMFZjut1nz~-AZbBFfdOv-OP1T2mkjZTVQUbf0x52vlXG24JYkjnwUU2awqX96UGmBEhEHvWoQuw3JpqaebaBbjIy1w7nnJeiiCUDubE3kW-NQG4YIPc57iftlEkVvIckt9EhCdmfEdipx5F4NmORPYgnwORPCLeLjikH6vyxsZ4CqaYNzg__"
              ],
              extraMembers: 1,
              isCompleted: true,
            ),
            SizedBox(height: 16),
            TaskCardType2(
              title: "Design Homepage",
              description: "Water Company Website",
              date: "Mon, 10 July 2022",
              memberImages: [
                "https://s3-alpha-sig.figma.com/img/e275/c444/3dec0926aef32133af195e1f189e2b89?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SsGMvlLZVseP2rkGzZzEFblYcAwAiZxMvjxIOPUyNeUlZO8SYmSNb~xK6laLsZtAtAW6e9PTBpgoUu3-xslH4preho19y0z-iF3gSXOC4aR1N4qGKbfq3JQikE9XpiV72n~CGK2bZVjDZc5cJky-vWK35vebhkhSQi4ScfQi-p8AfZ1Hly6FBBPlaCuKCdm4uCEEEU-6YMba0jrvURKZ5C0QjWZzQtlz5jQx~h1oxaxkGYLoaHC6XH-dd39deeIyjYC1dEG6vjxIQvT08T2U2VbkyWFeee6Vl0ZgHASSDJWsULpuISDSviY1gKpRhP3IGkX~b0yZSTejBudHziwYjw__",
                "https://s3-alpha-sig.figma.com/img/0e5e/a7dc/edf305c4b1419e0773984279236c7a83?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iMeMXqGV9Ha9--hinMs6YdEEkq4iq0VMVBV7nX8sfotxHZf6BMJNFxK144t~BaJXOOjPe0mFLCqjzmJgPrt1rDowaRqmZE25OCa2aGQgC-fMW9Na3cyeDK7hZZoW6tg0ao-Gk7oYvejMZXOjTFq4LsfHWCWyXPzxjeYtbz7KM342fbYS29tf7nRtxVxsv2hCCqk4o703e~sKSsszujKkz4loJK3ZTgL0R-7WY3jwcRgHhUhRGApp5Op9TEtQMJp8-7-nJEZVIvge-ZsYpMFw3-TjNYSul5RvjdUOQsmbkoXA0~ZA6i7F0XYUd-I5RpC9lfn3CcoXNlKM-7zkiEM~zg__"
              ],
              extraMembers: 2,
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 40, 
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('lib/img/home.png', width: 25),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/img/proj.png', width: 25),
            label: "Projects",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/img/cale.png', width: 25),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/img/mess.png', width: 25),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/img/mem.png', width: 25),
            label: "Members",
          ),
        ],
      ),
    );
  }
}



class TaskCardType1 extends StatelessWidget {
  final String title;
  final String category;
  final Color categoryColor; 
  final Color categoryBorderColor;
  final String priority;
  final Color priorityColor; 
  final Color priorityBorderColor; 
  final String date;
  final List<String> memberImages;
  final int extraMembers;

  const TaskCardType1({
    required this.title,
    required this.category,
    required this.categoryColor,
    required this.categoryBorderColor,
    required this.priority,
    required this.priorityColor,
    required this.priorityBorderColor,
    required this.date,
    required this.memberImages,
    required this.extraMembers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      color: Colors.white,
      child: SizedBox(
        width: 182,
        height: 211,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: categoryBorderColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 12,
                        color: categoryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 6), 
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: priorityColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      priority,
                      style: TextStyle(
                        fontSize: 12,
                        color: priorityBorderColor, 
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  ...List.generate(memberImages.length, (index) {
                    return Transform.translate(
                      offset: Offset(index * -15.0, 0), 
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4), 
                        ),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(memberImages[index]),
                        ),
                      ),
                    );
                  }),
                  if (extraMembers > 0)
                    Transform.translate(
                      offset: Offset(memberImages.length * -15.0, 0), 
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4), 
                        ),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: const Color.fromARGB(255, 255, 169, 89),
                          child: Text(
                            "$extraMembers+",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Image.asset('lib/img/cale.png', width: 22),
                  SizedBox(width: 4),
                  Text(
                    date,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class TaskCardType2 extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final List<String> memberImages;
  final int extraMembers;
  final bool isCompleted;

  const TaskCardType2({
    required this.title,
    required this.description,
    required this.date,
    required this.memberImages,
    required this.extraMembers,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365, 
      height: 178, 
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        decoration: isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0), 
                    child: Icon(
                      isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                      color: isCompleted
                          ? const Color.fromARGB(187, 33, 114, 243)
                          : const Color.fromARGB(255, 255, 255, 255),
                      size: 40,
                    ),
                  ),
                ],
              ),
              Text(
                description,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey[300],
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/cale.png', width: 22),
                      SizedBox(width: 6),
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, 
                    children: [
                      ...List.generate(memberImages.length, (index) {
                        return Transform.translate(
                          offset: Offset(index * -12.0, 0), 
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2), 
                            ),
                            child: CircleAvatar(
                              radius: 15, 
                              backgroundImage: NetworkImage(memberImages[index]),
                            ),
                          ),
                        );
                      }),
                      if (extraMembers > 0)
                        Transform.translate(
                          offset: Offset(memberImages.length * -12.0, 0), 
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2), 
                            ),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: const Color.fromARGB(255, 255, 169, 89),
                              child: Text(
                                "$extraMembers+",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            )
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

