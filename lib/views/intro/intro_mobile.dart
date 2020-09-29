part of intro_view;

class _IntroMobile extends StatelessWidget {
  final IntroViewModel viewModel;

  _IntroMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      PageViewModel(
        titleWidget: Container(),
        bodyWidget: Container(),
        image: Image.asset('assets/intro/1-page.png', fit: BoxFit.fill,),
        decoration: PageDecoration(
          bodyFlex: 0,
          imageFlex: 5,
          contentPadding: EdgeInsets.zero,
          imagePadding: EdgeInsets.zero,
          footerPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
        )
      ),
      PageViewModel(
        titleWidget: Container(),
        bodyWidget: Container(),
        image: Image.asset('assets/intro/2-page.png', fit: BoxFit.fill,),
        decoration: PageDecoration(
          bodyFlex: 0,
          imageFlex: 5,
          contentPadding: EdgeInsets.zero,
          imagePadding: EdgeInsets.zero,
          footerPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          pageColor: Color(0xffc6a3ff)
        )
      ),
      PageViewModel(
        titleWidget: Container(),
        bodyWidget: Container(),
        image: Image.asset('assets/intro/3-page.png', fit: BoxFit.fill,),
        decoration: PageDecoration(
          bodyFlex: 0,
          imageFlex: 5,
          contentPadding: EdgeInsets.zero,
          imagePadding: EdgeInsets.zero,
          footerPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
        )
      ),
    ];
    
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          // When done button is press
        },
        showSkipButton: true,
        globalBackgroundColor: Color(0xFFe8d2ff),
        skip: Text("Skip", style: TextStyle(fontWeight: FontWeight.w600)),
        next: Icon(Icons.navigate_next),
        done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).accentColor,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
          )
        ),
      ),
    );
  }
}
