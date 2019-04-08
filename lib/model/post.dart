class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '12345',
    author: 'kevin',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554746917289&di=b76a3d416a5825e96b8888f77c865257&imgtype=0&src=http%3A%2F%2Fimg1.ph.126.net%2FPsoIfC3TYdHx9t_gki2CwA%3D%3D%2F3859021930803194683.jpg',
  ),
  Post(
   title: '54321',
    author: 'john',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554746917288&di=8fa1abe6ce40a0dc1743209ca5b81709&imgtype=0&src=http%3A%2F%2Fs11.sinaimg.cn%2Fmw690%2F006hikKrzy7slvzPwSKba%26690', 
  ),
  Post(
    title: '67890',
    author: 'jack',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554746917288&di=35f6ed50540200e912b659d457972fc4&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F1e78c812582d5887ea74f45933e1f42b2aac449f9954-BXDMCO_fw658',
  ),
];