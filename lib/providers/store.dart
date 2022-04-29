import 'package:social_app/models/whatsapp_story.dart';
import 'package:social_app/providers/base_store.dart';
import 'package:social_app/repository/repository.dart';

class Store extends BaseStore {
  final _repository = Repository();
  final List<WhatsappStory> _whatsappStories = [];
  List<WhatsappStory> get whatsappStories => _whatsappStories;

  void getWhatsappStories() {
    runBlocking<List<WhatsappStory>>(
      _repository.getWhatsappStories(),
      doBefore: () {
        _whatsappStories.clear();
      },
      doOnSuccess: (newData) {
        _whatsappStories.addAll(newData);
        notifyListeners();
      },
      doOnError: print,
    );
  }
}
