// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fladder/models/item_base_model.dart';

class HomeModel {
  bool loading;
  List<ItemBaseModel> resumeVideo;
  List<ItemBaseModel> resumeAudio;
  List<ItemBaseModel> resumeBooks;
  List<ItemBaseModel> activePrograms;
  List<ItemBaseModel> nextUp;

  HomeModel({
    this.loading = false,
    this.resumeVideo = const [],
    this.resumeAudio = const [],
    this.resumeBooks = const [],
    this.activePrograms = const [],
    this.nextUp = const [],
  });

  void setLoading(bool value) {
    loading = value;
  }

  void _addOrUpdateItem(List<ItemBaseModel> list, ItemBaseModel item) {
    final index = list.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      //list[index] = item; //may want to only update if needed
    } else {
      list.add(item); //add items based on datetime
    }
  }

  void aouResumeVideo(ItemBaseModel item) {
    _addOrUpdateItem(resumeVideo, item);
  }

  void aouResumeAudio(ItemBaseModel item) {
    _addOrUpdateItem(resumeAudio, item);
  }

  void aouResumeBooks(ItemBaseModel item) {
    _addOrUpdateItem(resumeBooks, item);
  }

  void aouActivePrograms(ItemBaseModel item) {
    _addOrUpdateItem(activePrograms, item);
  }

  void aouNextUp(ItemBaseModel item) {
    _addOrUpdateItem(nextUp, item);
  }

  HomeModel copyWith({
    //Leave for redundancy for old code till not needed
    bool? loading,
    List<ItemBaseModel>? resumeVideo,
    List<ItemBaseModel>? resumeAudio,
    List<ItemBaseModel>? resumeBooks,
    List<ItemBaseModel>? activePrograms,
    List<ItemBaseModel>? nextUp,
    List<ItemBaseModel>? nextUpBooks,
  }) {
    return HomeModel(
      loading: loading ?? this.loading,
      resumeVideo: resumeVideo ?? this.resumeVideo,
      resumeAudio: resumeAudio ?? this.resumeAudio,
      resumeBooks: resumeBooks ?? this.resumeBooks,
      activePrograms: activePrograms ?? this.activePrograms,
      nextUp: nextUp ?? this.nextUp,
    );
  }
}
