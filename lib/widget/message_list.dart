import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:ray_plan/widget/message_card.dart';

typedef FetchPageFunction<T> = Future<List<T>> Function(int pageKey);

class MessageList<T> extends StatefulWidget {
  const MessageList(
      {super.key,
      required this.builderDelegate,
      required this.fetchPage,
      required this.pageSize});

  final PagedChildBuilderDelegate<T> builderDelegate;
  final FetchPageFunction<T> fetchPage;
  final int pageSize;

  @override
  State<MessageList<T>> createState() => _MessageListState<T>();
}

class _MessageListState<T> extends State<MessageList<T>> {
  final PagingController<int, T> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  _fetchPage(int pageKey) async {
    final newItems = await widget.fetchPage(pageKey);
    final isLastPage = newItems.length < widget.pageSize;
    if (isLastPage) {
      _pagingController.appendLastPage(newItems);
    } else {
      final nextPageKey = pageKey + newItems.length;
      _pagingController.appendPage(newItems, nextPageKey);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pagingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MessageCard(
        child: PagedListView<int, T>(
            pagingController: _pagingController,
            builderDelegate: widget.builderDelegate));
  }
}
