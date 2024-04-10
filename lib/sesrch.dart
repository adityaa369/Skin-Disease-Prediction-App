import 'package:flutter/material.dart';

class BlogPost {
  final String title;
  final String content;

  BlogPost(this.title, this.content);
}

class SearchResultsPage extends StatefulWidget {
  final String searchTerm;

  SearchResultsPage(this.searchTerm);

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  List<BlogPost> allBlogPosts = [
    BlogPost('Acne: Causes and Prevention', 'Lorem ipsum...'),
    BlogPost('Psoriasis: Understanding the Condition', 'Lorem ipsum...'),
    // Add more blog posts here
  ];

  List<BlogPost> searchResults = [];

  @override
  void initState() {
    super.initState();
    // Initialize search results based on the search term.
    filterBlogPosts(widget.searchTerm);
  }

  void filterBlogPosts(String searchTerm) {
    // Filter blog posts based on the search term.
    searchResults = allBlogPosts
        .where((post) =>
    post.title.toLowerCase().contains(searchTerm.toLowerCase()) ||
        post.content.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Search results for: ${widget.searchTerm}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Expanded(
            child: searchResults.isNotEmpty
                ? ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final post = searchResults[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.content),
                  // Add logic to navigate to the full blog post when tapped.
                  // Example: OnTap, navigate to the full blog post page.
                );
              },
            )
                : Center(
              child: Text('No results found.'),
            ),
          ),
        ],
      ),
    );
  }
}
