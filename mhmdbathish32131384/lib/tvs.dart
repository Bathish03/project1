class tv {
  String name;
  int price;
  double size;
  String image;

  tv(this.name, this.price, this.size, this.image);

  @override
  String toString() {
    return '$name,   $price';
  }
}

List<tv> tvs = [
  tv('Apple', 1000, 42,
      'https://images.unsplash.com/photo-1605034647753-3c296f848a2d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Ym13JTIwMjAxNXxlbnwwfHwwfHx8MA%3D%3D'),
  tv('Samsung', 499, 38,
      'https://images.unsplash.com/photo-1605034647753-3c296f848a2d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Ym13JTIwMjAxNXxlbnwwfHwwfHx8MA%3D%3D'),
  tv('Smart', 699, 35,
      'https://images.unsplash.com/photo-1605034647753-3c296f848a2d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Ym13JTIwMjAxNXxlbnwwfHwwfHx8MA%3D%3D'),
  tv('Lg', 699, 36,
      'https://images.unsplash.com/photo-1605034647753-3c296f848a2d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Ym13JTIwMjAxNXxlbnwwfHwwfHx8MA%3D%3D'),
      ];


