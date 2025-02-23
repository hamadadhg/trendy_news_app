import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/core/components/text_error_state_component.dart';
import 'package:trendy_news/features/videos/presentation/managers/cubits/videos_cubit/videos_cubit.dart';
import 'package:trendy_news/features/videos/presentation/managers/cubits/videos_cubit/videos_state.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_initial_video_state.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_list_view_shimmer_video.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_video_and_title.dart';

class CustomListViewVideos extends StatelessWidget {
  const CustomListViewVideos({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<VideosCubit, VideosState>(
      builder: (context, state) {
        if (state is VideosInitialState) {
          return const CustomInitialVideoState();
        } else if (state is VideosSuccessState) {
          return Expanded(
            child: RefreshIndicator(
//RefreshIndicator to make user to do pull the view to down, and appear the refresh icon
              onRefresh: () => context.read<VideosCubit>().refreshVideoView(),
//onRefresh you should assign to it method contain on data(cubit method contain on data)
//i create refreshVideoView because videoViewMethod need to String variable(search)
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.listInVideosState.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.01,
                    ),
                    child: CustomVideoAndTitle(
                      videosModel: state.listInVideosState[index],
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is VideosFailureState) {
          return TextErrorStateComponent(
            text: state.errorMessageInVideosState,
          );
        } else {
          return const CustomListViewShimmerVideo();
        }
      },
    );
  }
}
