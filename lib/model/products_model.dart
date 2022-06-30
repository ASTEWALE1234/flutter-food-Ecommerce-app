class Product {
  int? _productId; // these are private
  String? _productName;
  String? _productDescription;
  int? _productCategoryId; // these are private
  int? _productPrice;
  Product(
      {required ProductId,
      required ProductName,
      required ProductDescription,
      required ProductCategoryId,
      required ProductPrice}) {
    // create public value
    this._productId = ProductId; // public
    this._productName = ProductName;
    this._productDescription = ProductDescription;
    this._productCategoryId = ProductCategoryId;
    this._productPrice = ProductPrice;
  }
  Product.fromJson(Map<String, dynamic> json) {
    _productId = json["ProductId"];
    _productName = json["ProductName"];
    _productDescription = json["ProductDescription"];
    _productCategoryId = json["ProductCategoryId"];
    _productPrice = json["ProductPrice"];
  }
}
