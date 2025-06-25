import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'topic_card_widget.dart' show TopicCardWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class TopicCardModel extends FlutterFlowModel<TopicCardWidget> {
  ///  Local state fields for this component.

  DocumentReference? refTopicUserInteractions;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in TopicCard widget.
  TopicUserInteractionRecord? createTopicUserInteraction;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
