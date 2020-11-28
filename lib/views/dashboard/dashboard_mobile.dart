part of dashboard_view;

class _DashboardMobile extends StatelessWidget {
  final DashboardViewModel viewModel;

  _DashboardMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.lightbulb_outline),
                onPressed: () => Provider.of<ThemeModel>(context, listen: false).toggleTheme(),
              ),
              AutoSizeText(
                Provider.of<ThemeModel>(context).themeType.toString(),
                minFontSize: 14.0,
                maxFontSize: 20.0,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: Colors.white,
              color: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              duration: Duration(milliseconds: 350),
              tabBackgroundColor: Colors.grey[800],
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                GButton(
                  icon: LineIcons.heart_o,
                  text: 'Likes',
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ],
              selectedIndex: Provider.of<BottomNavigationBarProvider>(context).currentIndex,
              onTabChange: (index) => Provider.of<BottomNavigationBarProvider>(context, listen: false).currentIndex = index
            ),
          ),
        ),
      )
    );
  }
}
