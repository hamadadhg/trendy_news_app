import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/app_bar_component.dart';
import 'package:trendy_news/core/components/text_component_without_max_lines.dart';
import 'package:trendy_news/core/helpers/snack_bar_helper.dart';
import 'package:trendy_news/core/helpers/url_launcher_helper.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_contain_video.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_text_button.dart';

class CustomDetailsVideosView extends StatelessWidget {
  const CustomDetailsVideosView({
    super.key,
    required this.videosModel,
  });
  final VideosModel videosModel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const AppBarComponent(),
        SizedBox(
          height: size.height * 0.015,
        ),
        SizedBox(
          height: size.height * 0.45,
          child: AspectRatio(
            aspectRatio: size.width,
            child: CustomContainVideo(
              imageForVideo: videosModel.image,
              onPressed: videosModel.displayVideoFromFullUrl != null
                  ? () {
                      urlLauncherHelper(
                        videoOrChannel: videosModel.displayVideoFromFullUrl!,
                        context: context,
                        text: 'You Can\'t Display This Video',
                      );
                    } //do launch
                  : () {
                      snackBarHelper(
                        context: context,
                        text:
                            'This Video Not Available To Play, Just You Can Visit The Channel',
                      );
                    },
            ),
          ),
        ),
        CustomTextButton(
          onPressed: videosModel.displayChannelFromFullUrl != null
              ? () {
                  urlLauncherHelper(
                    videoOrChannel: videosModel.displayChannelFromFullUrl!,
                    context: context,
                    text: 'You Can\'t Visit This Channel',
                  );
                } //do launch
              : () {
                  snackBarHelper(
                    context: context,
                    text:
                        'This Video Not Available To Visit Channel, Just You Can Play The Video',
                  );
                },
        ),
        TextComponentWithoutMaxLines(
          text: videosModel.title,
          textStyle: StyleToTexts.textStyle20.copyWith(
            fontSize: size.height * 0.035,
          ),
        ),
      ],
    );
  }
}
