import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_eye/base/controller/base_controller.dart';
import 'package:open_eye/base/pageWidget/base_stateless_widget.dart';
import 'package:open_eye/ext/get_extension.dart';
import 'package:open_eye/res/colors.dart';
import 'package:open_eye/res/style.dart';
import 'package:open_eye/route/routes.dart';

class MinePage extends BaseStatelessWidget<MineController> {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/back_mine.png",
                fit: BoxFit.fill,
                height: 500.w,
              ),
              Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/head_mine.jpeg",
                      height: 150.w,
                      width: 150.w,
                    ),
                  ),
                  Box.hBox20,
                  Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 32.sp, color: ColorStyle.color_white),
                  ),
                ],
              )
            ],
          ),
          InkWell(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.w, right: 30.w),
              height: 100.w,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_focus.png",
                    width: 55.w,
                    height: 55.w,
                  ),
                  Box.wBox30,
                  Text("关注", style: Styles.style_000000_30)
                ],
              ),
            ),
            onTap: () {
              Map<String, String> map = {};
              map["tag"] = "focus";
              Get.toNamed(AppRoutes.findPage + AppRoutes.focusPage,
                  parameters: map);
            },
          ),
          DividerStyle.divider2Padding20,
          InkWell(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.w, right: 30.w),
              height: 100.w,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_type.png",
                    width: 55.w,
                    height: 55.w,
                  ),
                  Box.wBox30,
                  Text("分类", style: Styles.style_000000_30)
                ],
              ),
            ),
            onTap: () {
              Map<String, String> map = {};
              map["tag"] = "type";
              Get.toNamed(AppRoutes.findPage + AppRoutes.categoryPage,
                  parameters: map);
            },
          ),
          DividerStyle.divider2Padding20,
          InkWell(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.w, right: 30.w),
              height: 100.w,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_topic.png",
                    width: 55.w,
                    height: 55.w,
                  ),
                  Box.wBox30,
                  Text("专题", style: Styles.style_000000_30)
                ],
              ),
            ),
            onTap: () {
              Map<String, String> map = {};
              map["tag"] = "topic";
              Get.toNamed(AppRoutes.findPage + AppRoutes.topicPage,
                  parameters: map);
            },
          ),
          DividerStyle.divider2Padding20,
          InkWell(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.w, right: 30.w),
              height: 100.w,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_rank.png",
                    width: 55.w,
                    height: 55.w,
                  ),
                  Box.wBox30,
                  Text("排行", style: Styles.style_000000_30)
                ],
              ),
            ),
            onTap: () {
              // Get.toNamed(AppRoutes.minePage);
              Get.toNamed(AppRoutes.hotPage);
            },
          ),
          DividerStyle.divider2Padding20,
          InkWell(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.w, right: 30.w),
              height: 100.w,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_about.png",
                    width: 55.w,
                    height: 55.w,
                  ),
                  Box.wBox30,
                  Text("关于", style: Styles.style_000000_30)
                ],
              ),
            ),
            onTap: () {
              Get.showCommonDialog(
                  title: "项目介绍",
                  content:
                      "https://github.com/WinWang/open_eye\n开眼APP：整体项目架构基于Getx搭建，完成路由，依赖注入；网络请求框架基于Retrofit+Dio实现，配合官方JsonSerialize实现解析；"
                      "封装项目页面多状态（加载中，成功，失败，空数据）；封装列表页面下拉刷新+上拉加载更多等，具体更多内容，请下载项目了解更",
                  negaVisible: false);
            },
          ),
          DividerStyle.divider2Padding20,
        ],
      ),
    );
  }

  @override
  String titleString() {
    return "我的";
  }

  @override
  bool showTitleBar() {
    return false;
  }

  @override
  bool useLoadSir() => false;
}

class MineController extends BaseController {
  @override
  void loadNet() {}

  @override
  void onReady() {
    super.onReady();
  }
}

class MineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MineController());
  }
}
