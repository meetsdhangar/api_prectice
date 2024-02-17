// To parse this JSON data, do
//
//     final quotsModel = quotsModelFromJson(jsonString);

import 'dart:convert';

QuotsModel quotsModelFromJson(String str) => QuotsModel.fromJson(json.decode(str));

String quotsModelToJson(QuotsModel data) => json.encode(data.toJson());

class QuotsModel {
    List<Quote> quotes;
    int total;
    int skip;
    int limit;

    QuotsModel({
        required this.quotes,
        required this.total,
        required this.skip,
        required this.limit,
    });

    factory QuotsModel.fromJson(Map<String, dynamic> json) => QuotsModel(
        quotes: List<Quote>.from(json["quotes"].map((x) => Quote.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "quotes": List<dynamic>.from(quotes.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}

class Quote {
    int id;
    String quote;
    String author;

    Quote({
        required this.id,
        required this.quote,
        required this.author,
    });

    factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        id: json["id"],
        quote: json["quote"],
        author: json["author"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "quote": quote,
        "author": author,
    };
}
