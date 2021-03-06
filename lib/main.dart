import 'package:flutter/material.dart';

import 'a_screen/grid_view_index.dart';
import 'a_screen/grid_view_list_view.dart';
import 'a_screen/grid_view_list_view_index.dart';
import 'a_screen/grid_view_delta.dart';

import 'b_screen/image_card_screen.dart';
import 'b_screen/image_card_screen_efficient.dart';

import 'b_screen/image_card_store.dart';
import 'b_screen/image_card_store_update.dart';
import 'c_screen/intrinsic_width_screen.dart';
import 'c_screen/static_side_menu.dart';

import 'd_screen/animated_container_app.dart';
import 'd_screen/builder_auto.dart';
import 'd_screen/builder_manual.dart';

import 'e_screen/dropdown_sql_init.dart';
import 'e_screen/dropdown_url.dart';
import 'e_screen/dropdown_visibility.dart';

import 'f_screen/form_view.dart';
import 'f_screen/text_field.dart';
import 'f_screen/text_field_validate.dart';

import 'g_screen/timePicker.dart';

import 'h_screen/float_bottom_bar.dart';
import 'h_screen/flex_header_page_view.dart';
import 'h_screen/jump_page_view.dart';

import 'i_screen/google_search_result.dart';

import 'issue_screen/time_issue.dart';
import 'j_screen/callback_screen.dart';
import 'j_screen/simple_callback.dart';
import 'k_screen/post_frame.dart';
import 'l_screen/list_view_complex.dart';
import 'l_screen/list_view_two_image.dart';
import 'm_screen/popup_dynamic.dart';
import 'n_screen/will_pop_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BaseScreen(),
    );
  }
}

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tricky Layouts'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  Dividers(),
                  ScreenButton(
                    title: "A-1. Grid View Index",
                    child: GridViewIndex(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "A-2. Grid View + List View",
                    child: GridViewListView(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "A-3. Grid View List View Index",
                    subtitle: "Special after 6th grid box",
                    child: GridViewListViewIndex(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "A-4. Grid View Delta",
                    child: GridViewDelta(),
                  ),
                  Dividers(),
                  SizedBox(height: 20),

                  Dividers(),
                  ScreenButton(
                    title: "B-1. Image Cards",
                    subtitle: "'Inefficient' way to render multiple image",
                    child: ImageCardScreen(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "B-2. Image Cards Efficient",
                    subtitle: "Add Business Logic chosing image to display",
                    child: ImageCardScreenEfficient(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "B-3. Image Cards - Read from Class",
                    subtitle: "Loop through List<String> properties",
                    child: ImageCardStore(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "B-4. Image Cards - Updated",
                    subtitle: "Loop through List<String> properties",
                    child: RestaurantPage(),
                  ),
                  Dividers(),
                  SizedBox(height: 20),

                  Dividers(),
                  ScreenButton(
                    title: "C-1. Intrisic Width Usage",
                    child: IntrinsicWidthScreen(),
                  ),
                  Dividers(),
                  Dividers(),
                  ScreenButton(
                    title: "C-2. Static Side Menu",
                    child: StaticSideMenu(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "D-1. Animated Container",
                    child: AnimatedContainerApp(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "D-2. Auto Animation",
                    subtitle: "Animated builder auto triggered",
                    child: BuilderAuto(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "D-3. Manual Animation",
                    subtitle: "Animated builder *button* triggered",
                    child: BuilderManual(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  
                  ScreenButton(
                    title: "E-1. Dropdown Visibility",
                    child: DropdownScreen(),
                  ),
                  Dividers(),
                  
                  ScreenButton(
                    title: "E-2. Dropdown Url",
                    child: DropDown(),
                  ),
                  Dividers(),
                  
                  ScreenButton(
                    title: "E-3. Dropdown SQL Init",
                    subtitle: "Init dropdown Selection based on SQL Data",
                    child: SqliteDropdown(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "F-1. Form View",
                    subtitle: "Adjust Dropdown Field Height",
                    child: FormView(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "F-2. TextFieldScreen",
                    subtitle: "Check maxLength property",
                    child: TextFieldScreen(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "F-3. TextFieldScreen Validate",
                    subtitle: "Simple Validation",
                    child: TextFieldValidateScreen(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "G-1. Time Picker",
                    subtitle: "Complex Requirement",
                    child: TimePickerScreen(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "H-1. Bottom Bar and Float",
                    child: FloatBottomBarScreen(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "H-2. Flexible Tight and Page View",
                    subtitle: "Header stays on Top. Page View below",
                    child: FlexHeaderPageView(),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "H-3. Button interact Page View",
                    subtitle: "Header stays on Top. Page View below",
                    child: JumpPageView(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "I-1. Google Search Result",
                    subtitle: "Combination Sized Box and Page View",
                    child: GoogleSearchResult(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "J-1. Callback From Child Widget",
                    child: HorizontalCalendar(
                      month: 4,
                      year: 2019,
                    ),
                  ),
                  Dividers(),
                  ScreenButton(
                    title: "J-2. Simple Callback",
                    child: CreateForm(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "K - Post Frame",
                    subtitle: "Chaining Build Executions",
                    child: PostFrameScreen(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "L - List View",
                    subtitle: "Chaining Build Executions",
                    child: ListViewComplex(),
                  ),
                  Dividers(),
                  Dividers(),
                  ScreenButton(
                    title: "L - List View",
                    subtitle: "Two Image Card | Left and Right",
                    child: MainListPage(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "M - Popup Menu Button",
                    subtitle: "Dynamic Selection",
                    child: PopupDynamic(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "N - Will Pop",
                    subtitle: "Execute method when Closing Page",
                    child: WillPopScreen(),
                  ),
                  Dividers(),

                  SizedBox(height: 20),
                  Dividers(),
                  ScreenButton(
                    title: "Time Issue",
                    subtitle: "the-getter-month-was-called-on-null",
                    child: TimeIssue(),
                  ),
                  Dividers(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScreenButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget child;

  const ScreenButton({
    this.title,
    this.subtitle,
    this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title"),
      subtitle: subtitle != null ? Text("$subtitle") : null,
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return child;
            },
          ),
        );
      },
    );
  }
}

class Dividers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black54,
    );
  }
}
