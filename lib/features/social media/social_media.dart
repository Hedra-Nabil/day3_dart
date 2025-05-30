List<String> posts = ['firts post ', 'soc post ', 'third post '];

abstract class SocialMedia {
  Future<String> getPosts();
  Future<String> deletePosts(int id);
  Future<String> addPosts(String post);
}

class SocialMediaImplementation extends SocialMedia {
  @override
  Future<String> getPosts() {
    for (var post in posts) {
      print(post);
    }
    return Future.value('success');
  }

  @override
  Future<String> deletePosts(int id) {
    posts.removeAt(id);
    return Future.value('success');
  }

  @override
  Future<String> addPosts(String post) async {
    posts.add(post);
    return 'Post added successfully!';
  }
}

class UiRendering {
  final SocialMedia socialMedia;
  UiRendering(this.socialMedia);
  void showPostsButton() {
    socialMedia.getPosts();
  }

  void deletePostsButton(int id) {
    socialMedia.deletePosts(id);
    print('post $id deleted successfully');
  }

  void addPostsButton(String post) {
    socialMedia.addPosts(post);
    print('post $post added successfully');
  }
}
