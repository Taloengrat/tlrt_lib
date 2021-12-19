import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TlrtVideoPlayer extends StatefulWidget {
  final double width;
  final double height;
  final String videoPath;

  TlrtVideoPlayer({
    Key? key,
    required this.width,
    required this.height,
    required this.videoPath,
  }) : super(key: key);

  @override
  _TlrtVideoPlayerState createState() => _TlrtVideoPlayerState();
}

class _TlrtVideoPlayerState extends State<TlrtVideoPlayer> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/videos/SPIDER-MAN_NO_WAY_HOME.mp4')
          ..initialize()
          ..setLooping(true).then((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          _controller!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller!.value.aspectRatio,
                  child: VideoPlayer(_controller!),
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
          Align(
            alignment: Alignment.bottomLeft,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _controller!.value.isPlaying
                      ? _controller!.pause()
                      : _controller!.play();
                });
              },
              icon: Icon(
                _controller!.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow_rounded,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
