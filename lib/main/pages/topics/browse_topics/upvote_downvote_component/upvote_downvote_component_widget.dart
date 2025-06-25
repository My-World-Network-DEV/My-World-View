import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'upvote_downvote_component_model.dart';
export 'upvote_downvote_component_model.dart';

class UpvoteDownvoteComponentWidget extends StatefulWidget {
  const UpvoteDownvoteComponentWidget({super.key});

  @override
  State<UpvoteDownvoteComponentWidget> createState() =>
      _UpvoteDownvoteComponentWidgetState();
}

class _UpvoteDownvoteComponentWidgetState
    extends State<UpvoteDownvoteComponentWidget> {
  late UpvoteDownvoteComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpvoteDownvoteComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        ),
      ],
    );
  }
}
