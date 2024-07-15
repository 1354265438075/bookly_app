import 'dimensions.dart';
import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  int? printedPageCount;
  Dimensions? dimensions;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printedPageCount,
    this.dimensions,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json['title'] as String?,
    authors: (json['authors']as List<dynamic>?)?.map((e) => e as String).toList(),
    publisher: json['publisher'] as String?,
    publishedDate: json['publishedDate'] as String?,
    description: json['description'] as String?,
    industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
        ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
        .toList(),
    readingModes: json['readingModes'] == null
        ? null
        : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
    pageCount: json['pageCount'] as int?,
    printedPageCount: json['printedPageCount'] as int?,
    dimensions: json['dimensions'] == null
        ? null
        : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
    printType: json['printType'] as String?,
    categories: (json['categories'] as List<dynamic>?)?.map((e) => e as String).toList(),
    maturityRating: json['maturityRating'] as String?,
    allowAnonLogging: json['allowAnonLogging'] as bool?,
    contentVersion: json['contentVersion'] as String?,
    panelizationSummary: json['panelizationSummary'] == null
        ? null
        : PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String, dynamic>),
    imageLinks: json['imageLinks'] == null
        ? null
        : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
    language: json['language'] as String?,
    previewLink: json['previewLink'] as String?,
    infoLink: json['infoLink'] as String?,
    canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
  );


}