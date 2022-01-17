import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      /* ဒီမှာ app bar ကို သက်ဆိုင်ရာ tab အလိုက် build လို့ ရတာပဲ။ child တွေ ဆိုရင်တော့ မသိ */
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: Text('FlutterBottomNav ${tabsRouter.activeIndex}'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.indigo,
      /* သက်ဆိုင်ရာ route နဲ့ tab ကို တွဲပေးလိုက်တာ ဖြစ်မယ် */
      /* အခု လိုတာက သီးခြား Page တစ်ခုကို ဘယ်လို သွားကြမလဲ */
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        /* အိုကေ၊ bottom navigation bar တော့ flutter က ပါတဲ့ ကောင်နဲ့ ပြောင်းလိုက်ပြီ ၊ */
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          /* ဒါက အမှန်ဆို int တွေ get / set လုပ်ပေးတာ ထင်တယ်၊ အခု Auto Router ပေးတဲ့ ကောင်တွေကို ခေါ်လိုက်တယ် */
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
          ],
        );

      },
    );
  }
}

/*
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: Text('FlutterBottomNav ${tabsRouter.activeIndex}'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.indigo,
      /* သက်ဆိုင်ရာ route နဲ့ tab ကို တွဲပေးလိုက်တာ ဖြစ်မယ် */
      /* အခု လိုတာက သီးခြား Page တစ်ခုကို ဘယ်လို သွားကြမလဲ */
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              title: const Text('Posts'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue[200],
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text('Users'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.pinkAccent[100],
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: const Text('Settings'),
            )
          ],
        );
      },
    );
  }
}

 */
