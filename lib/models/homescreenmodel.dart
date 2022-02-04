// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.data,
  });

  DataClass? data;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: DataClass.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data!.toJson(),
  };
}

class DataClass {
  DataClass({
    this.accessTag,
    this.adBannerIds,
    this.additionalKeys,
    this.assetIds,
    this.bundleContentType,
    this.bundleGenres,
    this.bundleLanguages,
    this.bundleStatus,
    this.bundleTvodId,
    this.bundleUniqueId,
    this.catalogListItems,
    this.category,
    this.cmsListType,
    this.displayCount,
    this.displayTitle,
    this.durationString,
    this.filterType,
    this.friendlyId,
    this.homeLink,
    this.layoutScheme,
    this.layoutStructure,
    this.layoutType,
    this.listId,
    this.listInList,
    this.listItemType,
    this.listOrder,
    this.listType,
    this.logo,
    this.menuLink,
    this.mlDescription,
    this.mlGenres,
    this.mlLanguage,
    this.publishAtDate,
    this.publishedDate,
    this.queryFilterTypes,
    this.region,
    this.regions,
    this.saleEndDate,
    this.saleStartDate,
    this.secondaryLayer,
    this.seoDescription,
    this.seoKeywords,
    this.seoTitle,
    this.smartUrl,
    this.status,
    this.streamEndDate,
    this.streamStartDate,
    this.summary,
    this.synopsisUrl,
    this.tags,
    this.thumbnails,
    this.title,
    this.trailers,
    this.typeOfContent,
    this.version,
    this.theme,
    this.adUnitId,
    this.adUrl,
    this.totalItemsCount,
    this.itemCaption,
  });

  String? accessTag;
  List<dynamic>? adBannerIds;
  List<dynamic>? additionalKeys;
  List<dynamic>? assetIds;
  dynamic bundleContentType;
  List<dynamic>? bundleGenres;
  List<dynamic>? bundleLanguages;
  dynamic bundleStatus;
  dynamic bundleTvodId;
  dynamic bundleUniqueId;
  List<DataCatalogListItem>? catalogListItems;
  bool? category;
  String? cmsListType;
  dynamic displayCount;
  String? displayTitle;
  String? durationString;
  String? filterType;
  String? friendlyId;
  String? homeLink;
  String? layoutScheme;
  String? layoutStructure;
  String? layoutType;
  String? listId;
  dynamic listInList;
  String? listItemType;
  int? listOrder;
  String? listType;
  String? logo;
  String? menuLink;
  List<dynamic>? mlDescription;
  List<dynamic>? mlGenres;
  List<dynamic>? mlLanguage;
  String? publishAtDate;
  dynamic publishedDate;
  List<dynamic>? queryFilterTypes;
  List<dynamic>? region;
  List<dynamic>? regions;
  dynamic saleEndDate;
  dynamic saleStartDate;
  List<dynamic>? secondaryLayer;
  String? seoDescription;
  String? seoKeywords;
  String? seoTitle;
  String? smartUrl;
  String? status;
  dynamic streamEndDate;
  dynamic streamStartDate;
  dynamic summary;
  String? synopsisUrl;
  List<String>? tags;
  DataThumbnails? thumbnails;
  String? title;
  List<dynamic>? trailers;
  dynamic typeOfContent;
  String? version;
  String? theme;
  String? adUnitId;
  String? adUrl;
  int? totalItemsCount;
  String? itemCaption;

  factory DataClass.fromJson(Map<String, dynamic> json) => DataClass(
    accessTag: json["access_tag"],
    adBannerIds: List<dynamic>.from(json["ad_banner_ids"].map((x) => x)),
    additionalKeys: List<dynamic>.from(json["additional_keys"].map((x) => x)),
    assetIds: List<dynamic>.from(json["asset_ids"].map((x) => x)),
    bundleContentType: json["bundle_content_type"],
    bundleGenres: List<dynamic>.from(json["bundle_genres"].map((x) => x)),
    bundleLanguages: List<dynamic>.from(json["bundle_languages"].map((x) => x)),
    bundleStatus: json["bundle_status"],
    bundleTvodId: json["bundle_tvod_id"],
    bundleUniqueId: json["bundle_unique_id"],
    catalogListItems: List<DataCatalogListItem>.from(json["catalog_list_items"].map((x) => DataCatalogListItem.fromJson(x))),
    category: json["category"],
    cmsListType: json["cms_list_type"],
    displayCount: json["display_count"],
    displayTitle: json["display_title"],
    durationString: json["duration_string"],
    filterType: json["filter_type"],
    friendlyId: json["friendly_id"],
    homeLink: json["home_link"],
    layoutScheme: json["layout_scheme"],
    layoutStructure: json["layout_structure"],
    layoutType: json["layout_type"],
    listId: json["list_id"],
    listInList: json["list_in_list"],
    listItemType: json["list_item_type"],
    listOrder: json["list_order"],
    listType: json["list_type"],
    logo: json["logo"],
    menuLink: json["menu_link"],
    mlDescription: List<dynamic>.from(json["ml_description"].map((x) => x)),
    mlGenres: List<dynamic>.from(json["ml_genres"].map((x) => x)),
    mlLanguage: List<dynamic>.from(json["ml_language"].map((x) => x)),
    publishAtDate: json["publish_at_date"],
    publishedDate: json["published_date"],
    queryFilterTypes: List<dynamic>.from(json["query_filter_types"].map((x) => x)),
    region: List<dynamic>.from(json["region"].map((x) => x)),
    regions: List<dynamic>.from(json["regions"].map((x) => x)),
    saleEndDate: json["sale_end_date"],
    saleStartDate: json["sale_start_date"],
    secondaryLayer: List<dynamic>.from(json["secondary_layer"].map((x) => x)),
    seoDescription: json["seo_description"],
    seoKeywords: json["seo_keywords"],
    seoTitle: json["seo_title"],
    smartUrl: json["smart_url"],
    status: json["status"],
    streamEndDate: json["stream_end_date"],
    streamStartDate: json["stream_start_date"],
    summary: json["summary"],
    synopsisUrl: json["synopsis_url"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    thumbnails: DataThumbnails.fromJson(json["thumbnails"]),
    title: json["title"],
    trailers: List<dynamic>.from(json["trailers"].map((x) => x)),
    typeOfContent: json["type_of_content"],
    version: json["version"],
    theme: json["theme"],
    adUnitId: json["ad_unit_id"],
    adUrl: json["ad_url"],
    totalItemsCount: json["total_items_count"],
    itemCaption: json["item_caption"],
  );

  Map<String, dynamic> toJson() => {
    "access_tag": accessTag,
    "ad_banner_ids": List<dynamic>.from(adBannerIds!.map((x) => x)),
    "additional_keys": List<dynamic>.from(additionalKeys!.map((x) => x)),
    "asset_ids": List<dynamic>.from(assetIds!.map((x) => x)),
    "bundle_content_type": bundleContentType,
    "bundle_genres": List<dynamic>.from(bundleGenres!.map((x) => x)),
    "bundle_languages": List<dynamic>.from(bundleLanguages!.map((x) => x)),
    "bundle_status": bundleStatus,
    "bundle_tvod_id": bundleTvodId,
    "bundle_unique_id": bundleUniqueId,
    "catalog_list_items": List<dynamic>.from(catalogListItems!.map((x) => x.toJson())),
    "category": category,
    "cms_list_type": cmsListType,
    "display_count": displayCount,
    "display_title": displayTitle,
    "duration_string": durationString,
    "filter_type": filterType,
    "friendly_id": friendlyId,
    "home_link": homeLink,
    "layout_scheme": layoutScheme,
    "layout_structure": layoutStructure,
    "layout_type": layoutType,
    "list_id": listId,
    "list_in_list": listInList,
    "list_item_type": listItemType,
    "list_order": listOrder,
    "list_type": listType,
    "logo": logo,
    "menu_link": menuLink,
    "ml_description": List<dynamic>.from(mlDescription!.map((x) => x)),
    "ml_genres": List<dynamic>.from(mlGenres!.map((x) => x)),
    "ml_language": List<dynamic>.from(mlLanguage!.map((x) => x)),
    "publish_at_date": publishAtDate,
    "published_date": publishedDate,
    "query_filter_types": List<dynamic>.from(queryFilterTypes!.map((x) => x)),
    "region": List<dynamic>.from(region!.map((x) => x)),
    "regions": List<dynamic>.from(regions!.map((x) => x)),
    "sale_end_date": saleEndDate,
    "sale_start_date": saleStartDate,
    "secondary_layer": List<dynamic>.from(secondaryLayer!.map((x) => x)),
    "seo_description": seoDescription,
    "seo_keywords": seoKeywords,
    "seo_title": seoTitle,
    "smart_url": smartUrl,
    "status": status,
    "stream_end_date": streamEndDate,
    "stream_start_date": streamStartDate,
    "summary": summary,
    "synopsis_url": synopsisUrl,
    "tags": List<dynamic>.from(tags!.map((x) => x)),
    "thumbnails": thumbnails!.toJson(),
    "title": title,
    "trailers": List<dynamic>.from(trailers!.map((x) => x)),
    "type_of_content": typeOfContent,
    "version": version,
    "theme": theme,
    "ad_unit_id": adUnitId,
    "ad_url": adUrl,
    "total_items_count": totalItemsCount,
    "item_caption": itemCaption,
  };
}

class DataCatalogListItem {
  DataCatalogListItem({
    this.accessTag,
    this.adBannerIds,
    this.additionalKeys,
    this.assetIds,
    this.bundleContentType,
    this.bundleGenres,
    this.bundleLanguages,
    this.bundleStatus,
    this.bundleTvodId,
    this.bundleUniqueId,
    this.catalogListItems,
    this.category,
    this.cmsListType,
    this.displayCount,
    this.displayTitle,
    this.durationString,
    this.filterType,
    this.friendlyId,
    this.homeLink,
    this.layoutScheme,
    this.layoutStructure,
    this.layoutType,
    this.listId,
    this.listInList,
    this.listItemType,
    this.listOrder,
    this.listType,
    this.logo,
    this.menuLink,
    this.mlDescription,
    this.mlGenres,
    this.mlLanguage,
    this.publishAtDate,
    this.publishedDate,
    this.queryFilterTypes,
    this.region,
    this.regions,
    this.saleEndDate,
    this.saleStartDate,
    this.secondaryLayer,
    this.seoDescription,
    this.seoKeywords,
    this.seoTitle,
    this.smartUrl,
    this.status,
    this.streamEndDate,
    this.streamStartDate,
    this.summary,
    this.synopsisUrl,
    this.tags,
    this.thumbnails,
    this.title,
    this.trailers,
    this.typeOfContent,
    this.version,
    this.theme,
    this.adUnitId,
    this.adUrl,
    this.totalItemsCount,
    this.itemCaption,
    this.orderNo,
    this.mediaRecordId,
    this.programGroupTag,
    this.programGroupId,
    this.mediaRecordRegions,
    this.catalogObject,
    this.tag,
    this.listItemObject,
    this.message,
  });

  String? accessTag;
  List<dynamic>? adBannerIds;
  List<dynamic>? additionalKeys;
  List<dynamic>? assetIds;
  dynamic bundleContentType;
  List<dynamic>? bundleGenres;
  List<dynamic>? bundleLanguages;
  dynamic bundleStatus;
  dynamic bundleTvodId;
  dynamic bundleUniqueId;
  List<CatalogListItemCatalogListItem>? catalogListItems;
  bool? category;
  String? cmsListType;
  dynamic displayCount;
  String? displayTitle;
  String? durationString;
  String? filterType;
  String? friendlyId;
  String? homeLink;
  String? layoutScheme;
  String? layoutStructure;
  String? layoutType;
  String? listId;
  dynamic listInList;
  String? listItemType;
  int? listOrder;
  String? listType;
  String? logo;
  String? menuLink;
  List<dynamic>? mlDescription;
  List<dynamic>? mlGenres;
  List<dynamic>? mlLanguage;
  String? publishAtDate;
  dynamic publishedDate;
  List<dynamic>? queryFilterTypes;
  List<dynamic>? region;
  List<dynamic>? regions;
  dynamic saleEndDate;
  dynamic saleStartDate;
  List<dynamic>? secondaryLayer;
  String? seoDescription;
  String? seoKeywords;
  String? seoTitle;
  String? smartUrl;
  String? status;
  dynamic streamEndDate;
  dynamic streamStartDate;
  dynamic summary;
  String? synopsisUrl;
  List<String>? tags;
  CatalogListItemThumbnails? thumbnails;
  String? title;
  List<dynamic>? trailers;
  dynamic typeOfContent;
  String? version;
  String? theme;
  String? adUnitId;
  String? adUrl;
  int? totalItemsCount;
  String? itemCaption;
  int? orderNo;
  String? mediaRecordId;
  String? programGroupTag;
  String? programGroupId;
  List<String>? mediaRecordRegions;
  CatalogObject? catalogObject;
  String? tag;
  ListItemObject? listItemObject;
  String? message;

  factory DataCatalogListItem.fromJson(Map<String, dynamic> json) => DataCatalogListItem(
    accessTag: json["access_tag"],
    adBannerIds: List<dynamic>.from(json["ad_banner_ids"].map((x) => x)),
    additionalKeys: List<dynamic>.from(json["additional_keys"].map((x) => x)),
    assetIds: List<dynamic>.from(json["asset_ids"].map((x) => x)),
    bundleContentType: json["bundle_content_type"],
    bundleGenres: List<dynamic>.from(json["bundle_genres"].map((x) => x)),
    bundleLanguages: List<dynamic>.from(json["bundle_languages"].map((x) => x)),
    bundleStatus: json["bundle_status"],
    bundleTvodId: json["bundle_tvod_id"],
    bundleUniqueId: json["bundle_unique_id"],
    catalogListItems: List<CatalogListItemCatalogListItem>.from(json["catalog_list_items"].map((x) => CatalogListItemCatalogListItem.fromJson(x))),
    category: json["category"],
    cmsListType: json["cms_list_type"],
    displayCount: json["display_count"],
    displayTitle: json["display_title"],
    durationString: json["duration_string"],
    filterType: json["filter_type"],
    friendlyId: json["friendly_id"],
    homeLink: json["home_link"],
    layoutScheme: json["layout_scheme"],
    layoutStructure: json["layout_structure"],
    layoutType: json["layout_type"],
    listId: json["list_id"],
    listInList: json["list_in_list"],
    listItemType: json["list_item_type"],
    listOrder: json["list_order"] == null ? null : json["list_order"],
    listType: json["list_type"],
    logo: json["logo"],
    menuLink: json["menu_link"],
    mlDescription: List<dynamic>.from(json["ml_description"].map((x) => x)),
    mlGenres: List<dynamic>.from(json["ml_genres"].map((x) => x)),
    mlLanguage: List<dynamic>.from(json["ml_language"].map((x) => x)),
    publishAtDate: json["publish_at_date"],
    publishedDate: json["published_date"],
    queryFilterTypes: List<dynamic>.from(json["query_filter_types"].map((x) => x)),
    region: List<dynamic>.from(json["region"].map((x) => x)),
    regions: List<dynamic>.from(json["regions"].map((x) => x)),
    saleEndDate: json["sale_end_date"],
    saleStartDate: json["sale_start_date"],
    secondaryLayer: List<dynamic>.from(json["secondary_layer"].map((x) => x)),
    seoDescription: json["seo_description"],
    seoKeywords: json["seo_keywords"],
    seoTitle: json["seo_title"],
    smartUrl: json["smart_url"],
    status: json["status"],
    streamEndDate: json["stream_end_date"],
    streamStartDate: json["stream_start_date"],
    summary: json["summary"],
    synopsisUrl: json["synopsis_url"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    thumbnails: CatalogListItemThumbnails.fromJson(json["thumbnails"]),
    title: json["title"],
    trailers: List<dynamic>.from(json["trailers"].map((x) => x)),
    typeOfContent: json["type_of_content"],
    version: json["version"],
    theme: json["theme"],
    adUnitId: json["ad_unit_id"],
    adUrl: json["ad_url"],
    totalItemsCount: json["total_items_count"],
    itemCaption: json["item_caption"],
    orderNo: json["order_no"],
    mediaRecordId: json["media_record_id"],
    programGroupTag: json["program_group_tag"],
    programGroupId: json["program_group_id"],
    mediaRecordRegions: List<String>.from(json["media_record_regions"].map((x) => x)),
    catalogObject: CatalogObject.fromJson(json["catalog_object"]),
    tag: json["tag"],
    listItemObject: ListItemObject.fromJson(json["list_item_object"]),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "access_tag": accessTag,
    "ad_banner_ids": List<dynamic>.from(adBannerIds!.map((x) => x)),
    "additional_keys": List<dynamic>.from(additionalKeys!.map((x) => x)),
    "asset_ids": List<dynamic>.from(assetIds!.map((x) => x)),
    "bundle_content_type": bundleContentType,
    "bundle_genres": List<dynamic>.from(bundleGenres!.map((x) => x)),
    "bundle_languages": List<dynamic>.from(bundleLanguages!.map((x) => x)),
    "bundle_status": bundleStatus,
    "bundle_tvod_id": bundleTvodId,
    "bundle_unique_id": bundleUniqueId,
    "catalog_list_items": List<dynamic>.from(catalogListItems!.map((x) => x.toJson())),
    "category": category,
    "cms_list_type": cmsListType,
    "display_count": displayCount,
    "display_title": displayTitle,
    "duration_string": durationString,
    "filter_type": filterType,
    "friendly_id": friendlyId,
    "home_link": homeLink,
    "layout_scheme": layoutScheme,
    "layout_structure": layoutStructure,
    "layout_type": layoutType,
    "list_id": listId,
    "list_in_list": listInList,
    "list_item_type": listItemType,
    "list_order": listOrder == null ? null : listOrder,
    "list_type": listType,
    "logo": logo,
    "menu_link": menuLink,
    "ml_description": List<dynamic>.from(mlDescription!.map((x) => x)),
    "ml_genres": List<dynamic>.from(mlGenres!.map((x) => x)),
    "ml_language": List<dynamic>.from(mlLanguage!.map((x) => x)),
    "publish_at_date": publishAtDate,
    "published_date": publishedDate,
    "query_filter_types": List<dynamic>.from(queryFilterTypes!.map((x) => x)),
    "region": List<dynamic>.from(region!.map((x) => x)),
    "regions": List<dynamic>.from(regions!.map((x) => x)),
    "sale_end_date": saleEndDate,
    "sale_start_date": saleStartDate,
    "secondary_layer": List<dynamic>.from(secondaryLayer!.map((x) => x)),
    "seo_description": seoDescription,
    "seo_keywords": seoKeywords,
    "seo_title": seoTitle,
    "smart_url": smartUrl,
    "status": status,
    "stream_end_date": streamEndDate,
    "stream_start_date": streamStartDate,
    "summary": summary,
    "synopsis_url": synopsisUrl,
    "tags": List<dynamic>.from(tags!.map((x) => x)),
    "thumbnails": thumbnails!.toJson(),
    "title": title,
    "trailers": List<dynamic>.from(trailers!.map((x) => x)),
    "type_of_content": typeOfContent,
    "version": version,
    "theme": theme,
    "ad_unit_id": adUnitId,
    "ad_url": adUrl,
    "total_items_count": totalItemsCount,
    "item_caption": itemCaption,
    "order_no": orderNo,
    "media_record_id": mediaRecordId,
    "program_group_tag": programGroupTag,
    "program_group_id": programGroupId,
    "media_record_regions": List<dynamic>.from(mediaRecordRegions!.map((x) => x)),
    "catalog_object": catalogObject!.toJson(),
    "tag": tag,
    "list_item_object": listItemObject!.toJson(),
    "message": message == null ? null : message,
  };
}

class CatalogListItemCatalogListItem {
  CatalogListItemCatalogListItem({
    this.displayTitle,
    this.title,
    this.itemCaption,
    this.contentId,
    this.sequenceNo,
    this.language,
    this.languages,
    this.genres,
    this.displayGenres,
    this.description,
    this.smartUrl,
    this.youtubeUrl,
    this.embedUrls,
    this.theme,
    this.catalogId,
    this.thumbnails,
    this.duration,
    this.rating,
    this.releaseDate,
    this.people,
    this.playUrl,
    this.playUrlType,
    this.catalogName,
    this.shortDescription,
    this.keywords,
    this.releaseDateString,
    this.releaseDateUts,
    this.durationString,
    this.mediaType,
    this.typeOfContent,
    this.friendlyId,
    this.videoDuration,
    this.svod,
    this.tvod,
    this.viewCountFlag,
    this.synopsisUrl,
    this.contentDefinition,
    this.defaultTrailer,
    this.planCategories,
    this.subscriptionThemeId,
    this.tvodReleaseDate,
    this.subscriptionCatalogId,
    this.tvodPlans,
    this.buyDescription,
    this.addMetadata,
    this.midrolladsIntervals,
    this.seoWebUrl,
    this.associatedVideos,
    this.playType,
    this.accessControl,
    this.orderNo,
    this.mediaRecordId,
    this.programGroupTag,
    this.programGroupId,
    this.mediaRecordRegions,
    this.catalogObject,
    this.tag,
    this.listItemObject,
    this.lastEpisode,
    this.likeCount,
    this.noOfUserRated,
    this.averageUserRating,
    this.episodeFlag,
    this.subcategoryFlag,
    this.alternateTitle,
    this.episodeCount,
    this.channelObject,
    this.subGenres,
    this.displaySubGenres,
    this.isEmbeddable,
    this.starCast,
    this.producer,
    this.director,
    this.musicComposer,
    this.lyricist,
    this.contentProvider,
    this.subtitleLanguages,
    this.cbfcRating,
    this.singers,
    this.musicDirectors,
    this.religion,
    this.diety,
    this.associatedImage,
    this.channelName,
    this.assetId,
    this.status,
    this.contentCategory,
    this.youtubeId,
    this.city,
    this.district,
    this.state,
    this.mlTitle,
    this.itemLanguages,
    this.smarturlList,
    this.thumbnailList,
    this.htmlList,
    this.channelLogo,
    this.programs,
  });

  String? displayTitle;
  String? title;
  String? itemCaption;
  String? contentId;
  int? sequenceNo;
  dynamic language;
  List<String>? languages;
  List<String>? genres;
  List<String>? displayGenres;
  String? description;
  String? smartUrl;
  String? youtubeUrl;
  String? embedUrls;
  String? theme;
  String? catalogId;
  Map<String, LLarge>? thumbnails;
  int? duration;
  dynamic rating;
  int? releaseDate;
  List<dynamic>? people;
  PlayUrl? playUrl;
  String? playUrlType;
  String? catalogName;
  String? shortDescription;
  String? keywords;
  String? releaseDateString;
  int? releaseDateUts;
  String? durationString;
  String? mediaType;
  String? typeOfContent;
  String? friendlyId;
  int? videoDuration;
  List<dynamic>? svod;
  List<dynamic>? tvod;
  String? viewCountFlag;
  String? synopsisUrl;
  String? contentDefinition;
  DefaultTrailer? defaultTrailer;
  List<String>? planCategories;
  String? subscriptionThemeId;
  String? tvodReleaseDate;
  String? subscriptionCatalogId;
  List<TvodPlan>? tvodPlans;
  String? buyDescription;
  AddMetadata? addMetadata;
  List<dynamic>? midrolladsIntervals;
  String? seoWebUrl;
  bool? associatedVideos;
  bool? playType;
  AccessControl? accessControl;
  int? orderNo;
  String? mediaRecordId;
  String? programGroupTag;
  String? programGroupId;
  List<String>? mediaRecordRegions;
  CatalogObject? catalogObject;
  String? tag;
  ListItemObject? listItemObject;
  LastEpisode? lastEpisode;
  int? likeCount;
  int? noOfUserRated;
  String? averageUserRating;
  String? episodeFlag;
  String? subcategoryFlag;
  String? alternateTitle;
  int? episodeCount;
  ChannelObject? channelObject;
  List<dynamic>? subGenres;
  List<dynamic>? displaySubGenres;
  bool? isEmbeddable;
  List<dynamic>? starCast;
  List<dynamic>? producer;
  List<dynamic>? director;
  List<dynamic>? musicComposer;
  List<dynamic>? lyricist;
  List<dynamic>? contentProvider;
  List<dynamic>? subtitleLanguages;
  String? cbfcRating;
  List<dynamic>? singers;
  List<dynamic>? musicDirectors;
  String? religion;
  String? diety;
  String? associatedImage;
  String? channelName;
  String? assetId;
  String? status;
  String? contentCategory;
  String? youtubeId;
  List<dynamic>? city;
  List<dynamic>? district;
  List<dynamic>? state;
  List<MlTitle>? mlTitle;
  List<dynamic>? itemLanguages;
  List<dynamic>? smarturlList;
  List<dynamic>? thumbnailList;
  List<dynamic>? htmlList;
  ChannelLogo? channelLogo;
  List<dynamic>? programs;

  factory CatalogListItemCatalogListItem.fromJson(Map<String, dynamic> json) => CatalogListItemCatalogListItem(
    displayTitle: json["display_title"] == null ? null : json["display_title"],
    title: json["title"],
    itemCaption: json["item_caption"] == null ? null : json["item_caption"],
    contentId: json["content_id"],
    sequenceNo: json["sequence_no"],
    language: json["language"],
    languages: json["languages"] == null ? null : List<String>.from(json["languages"].map((x) => x)),
    genres: List<String>.from(json["genres"].map((x) => x)),
    displayGenres: json["display_genres"] == null ? null : List<String>.from(json["display_genres"].map((x) => x)),
    description: json["description"],
    smartUrl: json["smart_url"],
    youtubeUrl: json["youtube_url"] == null ? null : json["youtube_url"],
    embedUrls: json["embed_urls"] == null ? null : json["embed_urls"],
    theme: json["theme"],
    catalogId: json["catalog_id"],
    thumbnails: Map.from(json["thumbnails"]).map((k, v) => MapEntry<String, LLarge>(k, LLarge.fromJson(v))),
    duration: json["duration"] == null ? null : json["duration"],
    rating: json["rating"],
    releaseDate: json["release_date"],
    people: json["people"] == null ? null : List<dynamic>.from(json["people"].map((x) => x)),
    playUrl: PlayUrl.fromJson(json["play_url"]),
    playUrlType: json["play_url_type"],
    catalogName: json["catalog_name"] == null ? null : json["catalog_name"],
    shortDescription: json["short_description"] == null ? null : json["short_description"],
    keywords: json["keywords"],
    releaseDateString: json["release_date_string"] == null ? null : json["release_date_string"],
    releaseDateUts: json["release_date_uts"] == null ? null : json["release_date_uts"],
    durationString: json["duration_string"] == null ? null : json["duration_string"],
    mediaType: json["media_type"] == null ? null : json["media_type"],
    typeOfContent: json["type_of_content"] == null ? null : json["type_of_content"],
    friendlyId: json["friendly_id"],
    videoDuration: json["video_duration"] == null ? null : json["video_duration"],
    svod: List<dynamic>.from(json["svod"].map((x) => x)),
    tvod: List<dynamic>.from(json["tvod"].map((x) => x)),
    viewCountFlag: json["view_count_flag"] == null ? null : json["view_count_flag"],
    synopsisUrl: json["synopsis_url"] == null ? null : json["synopsis_url"],
    contentDefinition: json["content_definition"] == null ? null : json["content_definition"],
    defaultTrailer: json["default_trailer"] == null ? null : DefaultTrailer.fromJson(json["default_trailer"]),
    planCategories: json["plan_categories"] == null ? null : List<String>.from(json["plan_categories"].map((x) => x)),
    subscriptionThemeId: json["subscription_theme_id"] == null ? null : json["subscription_theme_id"],
    tvodReleaseDate: json["tvod_release_date"] == null ? null : json["tvod_release_date"],
    subscriptionCatalogId: json["subscription_catalog_id"] == null ? null : json["subscription_catalog_id"],
    tvodPlans: json["tvod_plans"] == null ? null : List<TvodPlan>.from(json["tvod_plans"].map((x) => TvodPlan.fromJson(x))),
    buyDescription: json["buy_description"] == null ? null : json["buy_description"],
    addMetadata: json["add_metadata"] == null ? null : AddMetadata.fromJson(json["add_metadata"]),
    midrolladsIntervals: json["midrollads_intervals"] == null ? null : List<dynamic>.from(json["midrollads_intervals"].map((x) => x)),
    seoWebUrl: json["seo_web_url"],
    associatedVideos: json["associated_videos"] == null ? null : json["associated_videos"],
    playType: json["play_type"] == null ? null : json["play_type"],
    accessControl: AccessControl.fromJson(json["access_control"]),
    orderNo: json["order_no"] == null ? null : json["order_no"],
    mediaRecordId: json["media_record_id"] == null ? null : json["media_record_id"],
    programGroupTag: json["program_group_tag"] == null ? null : json["program_group_tag"],
    programGroupId: json["program_group_id"] == null ? null : json["program_group_id"],
    mediaRecordRegions: json["media_record_regions"] == null ? null : List<String>.from(json["media_record_regions"].map((x) => x)),
    catalogObject: CatalogObject.fromJson(json["catalog_object"]),
    tag: json["tag"] == null ? null : json["tag"],
    listItemObject: json["list_item_object"] == null ? null : ListItemObject.fromJson(json["list_item_object"]),
    lastEpisode: json["last_episode"] == null ? null : LastEpisode.fromJson(json["last_episode"]),
    likeCount: json["like_count"] == null ? null : json["like_count"],
    noOfUserRated: json["no_of_user_rated"] == null ? null : json["no_of_user_rated"],
    averageUserRating: json["average_user_rating"] == null ? null : json["average_user_rating"],
    episodeFlag: json["episode_flag"] == null ? null : json["episode_flag"],
    subcategoryFlag: json["subcategory_flag"] == null ? null : json["subcategory_flag"],
    alternateTitle: json["alternate_title"] == null ? null : json["alternate_title"],
    episodeCount: json["episode_count"] == null ? null : json["episode_count"],
    channelObject: json["channel_object"] == null ? null : ChannelObject.fromJson(json["channel_object"]),
    subGenres: json["sub_genres"] == null ? null : List<dynamic>.from(json["sub_genres"].map((x) => x)),
    displaySubGenres: json["display_sub_genres"] == null ? null : List<dynamic>.from(json["display_sub_genres"].map((x) => x)),
    isEmbeddable: json["is_embeddable"] == null ? null : json["is_embeddable"],
    starCast: json["star_cast"] == null ? null : List<dynamic>.from(json["star_cast"].map((x) => x)),
    producer: json["producer"] == null ? null : List<dynamic>.from(json["producer"].map((x) => x)),
    director: json["director"] == null ? null : List<dynamic>.from(json["director"].map((x) => x)),
    musicComposer: json["music_composer"] == null ? null : List<dynamic>.from(json["music_composer"].map((x) => x)),
    lyricist: json["lyricist"] == null ? null : List<dynamic>.from(json["lyricist"].map((x) => x)),
    contentProvider: json["content_provider"] == null ? null : List<dynamic>.from(json["content_provider"].map((x) => x)),
    subtitleLanguages: json["subtitle_languages"] == null ? null : List<dynamic>.from(json["subtitle_languages"].map((x) => x)),
    cbfcRating: json["cbfc_rating"] == null ? null : json["cbfc_rating"],
    singers: json["singers"] == null ? null : List<dynamic>.from(json["singers"].map((x) => x)),
    musicDirectors: json["music_directors"] == null ? null : List<dynamic>.from(json["music_directors"].map((x) => x)),
    religion: json["religion"] == null ? null : json["religion"],
    diety: json["diety"] == null ? null : json["diety"],
    associatedImage: json["associated_image"] == null ? null : json["associated_image"],
    channelName: json["channel_name"] == null ? null : json["channel_name"],
    assetId: json["asset_id"] == null ? null : json["asset_id"],
    status: json["status"] == null ? null : json["status"],
    contentCategory: json["content_category"] == null ? null : json["content_category"],
    youtubeId: json["youtube_id"] == null ? null : json["youtube_id"],
    city: json["city"] == null ? null : List<dynamic>.from(json["city"].map((x) => x)),
    district: json["district"] == null ? null : List<dynamic>.from(json["district"].map((x) => x)),
    state: json["state"] == null ? null : List<dynamic>.from(json["state"].map((x) => x)),
    mlTitle: json["ml_title"] == null ? null : List<MlTitle>.from(json["ml_title"].map((x) => MlTitle.fromJson(x))),
    itemLanguages: json["item_languages"] == null ? null : List<dynamic>.from(json["item_languages"].map((x) => x)),
    smarturlList: json["smarturl_list"] == null ? null : List<dynamic>.from(json["smarturl_list"].map((x) => x)),
    thumbnailList: json["thumbnail_list"] == null ? null : List<dynamic>.from(json["thumbnail_list"].map((x) => x)),
    htmlList: json["html_list"] == null ? null : List<dynamic>.from(json["html_list"].map((x) => x)),
    channelLogo: json["channel_logo"] == null ? null : ChannelLogo.fromJson(json["channel_logo"]),
    programs: json["programs"] == null ? null : List<dynamic>.from(json["programs"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "display_title": displayTitle == null ? null : displayTitle,
    "title": title,
    "item_caption": itemCaption == null ? null : itemCaption,
    "content_id": contentId,
    "sequence_no": sequenceNo,
    "language": language,
    "languages": languages == null ? null : List<dynamic>.from(languages!.map((x) => x)),
    "genres": List<dynamic>.from(genres!.map((x) => x)),
    "display_genres": displayGenres == null ? null : List<dynamic>.from(displayGenres!.map((x) => x)),
    "description": description,
    "smart_url": smartUrl,
    "youtube_url": youtubeUrl == null ? null : youtubeUrl,
    "embed_urls": embedUrls == null ? null : embedUrls,
    "theme": theme,
    "catalog_id": catalogId,
    "thumbnails": Map.from(thumbnails!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "duration": duration == null ? null : duration,
    "rating": rating,
    "release_date": releaseDate,
    "people": people == null ? null : List<dynamic>.from(people!.map((x) => x)),
    "play_url": playUrl!.toJson(),
    "play_url_type": playUrlType,
    "catalog_name": catalogName == null ? null : catalogName,
    "short_description": shortDescription == null ? null : shortDescription,
    "keywords": keywords,
    "release_date_string": releaseDateString == null ? null : releaseDateString,
    "release_date_uts": releaseDateUts == null ? null : releaseDateUts,
    "duration_string": durationString == null ? null : durationString,
    "media_type": mediaType == null ? null : mediaType,
    "type_of_content": typeOfContent == null ? null : typeOfContent,
    "friendly_id": friendlyId,
    "video_duration": videoDuration == null ? null : videoDuration,
    "svod": List<dynamic>.from(svod!.map((x) => x)),
    "tvod": List<dynamic>.from(tvod!.map((x) => x)),
    "view_count_flag": viewCountFlag == null ? null : viewCountFlag,
    "synopsis_url": synopsisUrl == null ? null : synopsisUrl,
    "content_definition": contentDefinition == null ? null : contentDefinition,
    "default_trailer": defaultTrailer == null ? null : defaultTrailer!.toJson(),
    "plan_categories": planCategories == null ? null : List<dynamic>.from(planCategories!.map((x) => x)),
    "subscription_theme_id": subscriptionThemeId == null ? null : subscriptionThemeId,
    "tvod_release_date": tvodReleaseDate == null ? null : tvodReleaseDate,
    "subscription_catalog_id": subscriptionCatalogId == null ? null : subscriptionCatalogId,
    "tvod_plans": tvodPlans == null ? null : List<dynamic>.from(tvodPlans!.map((x) => x.toJson())),
    "buy_description": buyDescription == null ? null : buyDescription,
    "add_metadata": addMetadata == null ? null : addMetadata!.toJson(),
    "midrollads_intervals": midrolladsIntervals == null ? null : List<dynamic>.from(midrolladsIntervals!.map((x) => x)),
    "seo_web_url": seoWebUrl,
    "associated_videos": associatedVideos == null ? null : associatedVideos,
    "play_type": playType == null ? null : playType,
    "access_control": accessControl!.toJson(),
    "order_no": orderNo == null ? null : orderNo,
    "media_record_id": mediaRecordId == null ? null : mediaRecordId,
    "program_group_tag": programGroupTag == null ? null : programGroupTag,
    "program_group_id": programGroupId == null ? null : programGroupId,
    "media_record_regions": mediaRecordRegions == null ? null : List<dynamic>.from(mediaRecordRegions!.map((x) => x)),
    "catalog_object": catalogObject!.toJson(),
    "tag": tag == null ? null : tag,
    "list_item_object": listItemObject == null ? null : listItemObject!.toJson(),
    "last_episode": lastEpisode == null ? null : lastEpisode!.toJson(),
    "like_count": likeCount == null ? null : likeCount,
    "no_of_user_rated": noOfUserRated == null ? null : noOfUserRated,
    "average_user_rating": averageUserRating == null ? null : averageUserRating,
    "episode_flag": episodeFlag == null ? null : episodeFlag,
    "subcategory_flag": subcategoryFlag == null ? null : subcategoryFlag,
    "alternate_title": alternateTitle == null ? null : alternateTitle,
    "episode_count": episodeCount == null ? null : episodeCount,
    "channel_object": channelObject == null ? null : channelObject!.toJson(),
    "sub_genres": subGenres == null ? null : List<dynamic>.from(subGenres!.map((x) => x)),
    "display_sub_genres": displaySubGenres == null ? null : List<dynamic>.from(displaySubGenres!.map((x) => x)),
    "is_embeddable": isEmbeddable == null ? null : isEmbeddable,
    "star_cast": starCast == null ? null : List<dynamic>.from(starCast!.map((x) => x)),
    "producer": producer == null ? null : List<dynamic>.from(producer!.map((x) => x)),
    "director": director == null ? null : List<dynamic>.from(director!.map((x) => x)),
    "music_composer": musicComposer == null ? null : List<dynamic>.from(musicComposer!.map((x) => x)),
    "lyricist": lyricist == null ? null : List<dynamic>.from(lyricist!.map((x) => x)),
    "content_provider": contentProvider == null ? null : List<dynamic>.from(contentProvider!.map((x) => x)),
    "subtitle_languages": subtitleLanguages == null ? null : List<dynamic>.from(subtitleLanguages!.map((x) => x)),
    "cbfc_rating": cbfcRating == null ? null : cbfcRating,
    "singers": singers == null ? null : List<dynamic>.from(singers!.map((x) => x)),
    "music_directors": musicDirectors == null ? null : List<dynamic>.from(musicDirectors!.map((x) => x)),
    "religion": religion == null ? null : religion,
    "diety": diety == null ? null : diety,
    "associated_image": associatedImage == null ? null : associatedImage,
    "channel_name": channelName == null ? null : channelName,
    "asset_id": assetId == null ? null : assetId,
    "status": status == null ? null : status,
    "content_category": contentCategory == null ? null : contentCategory,
    "youtube_id": youtubeId == null ? null : youtubeId,
    "city": city == null ? null : List<dynamic>.from(city!.map((x) => x)),
    "district": district == null ? null : List<dynamic>.from(district!.map((x) => x)),
    "state": state == null ? null : List<dynamic>.from(state!.map((x) => x)),
    "ml_title": mlTitle == null ? null : List<dynamic>.from(mlTitle!.map((x) => x.toJson())),
    "item_languages": itemLanguages == null ? null : List<dynamic>.from(itemLanguages!.map((x) => x)),
    "smarturl_list": smarturlList == null ? null : List<dynamic>.from(smarturlList!.map((x) => x)),
    "thumbnail_list": thumbnailList == null ? null : List<dynamic>.from(thumbnailList!.map((x) => x)),
    "html_list": htmlList == null ? null : List<dynamic>.from(htmlList!.map((x) => x)),
    "channel_logo": channelLogo == null ? null : channelLogo!.toJson(),
    "programs": programs == null ? null : List<dynamic>.from(programs!.map((x) => x)),
  };
}

class AccessControl {
  AccessControl({
    this.accessControlId,
    this.title,
    this.isFree,
    this.premiumTag,
    this.tvappControl,
    this.adsAvailable,
    this.startDate,
    this.endDate,
    this.loginRequired,
    this.drmKey,
    this.preRoleSettings,
    this.postRoleSettings,
    this.midRoleSettings,
    this.overlaySettings,
    this.vmapSettings,
    this.vmapUrl,
  });

  String? accessControlId;
  String? title;
  bool? isFree;
  bool? premiumTag;
  bool? tvappControl;
  bool? adsAvailable;
  DateTime? startDate;
  DateTime? endDate;
  bool? loginRequired;
  dynamic drmKey;
  Settings? preRoleSettings;
  Settings? postRoleSettings;
  MidRoleSettings? midRoleSettings;
  Settings? overlaySettings;
  Settings? vmapSettings;
  String? vmapUrl;

  factory AccessControl.fromJson(Map<String, dynamic> json) => AccessControl(
    accessControlId: json["access_control_id"] == null ? null : json["access_control_id"],
    title: json["title"] == null ? null : json["title"],
    isFree: json["is_free"],
    premiumTag: json["premium_tag"],
    tvappControl: json["tvapp_control"],
    adsAvailable: json["ads_available"],
    startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
    endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
    loginRequired: json["login_required"],
    drmKey: json["drm_key"],
    preRoleSettings: Settings.fromJson(json["pre_role_settings"]),
    postRoleSettings: Settings.fromJson(json["post_role_settings"]),
    midRoleSettings: MidRoleSettings.fromJson(json["mid_role_settings"]),
    overlaySettings: Settings.fromJson(json["overlay_settings"]),
    vmapSettings: json["vmap_settings"] == null ? null : Settings.fromJson(json["vmap_settings"]),
    vmapUrl: json["vmap_url"] == null ? null : json["vmap_url"],
  );

  Map<String, dynamic> toJson() => {
    "access_control_id": accessControlId == null ? null : accessControlId,
    "title": title == null ? null : title,
    "is_free": isFree,
    "premium_tag": premiumTag,
    "tvapp_control": tvappControl,
    "ads_available": adsAvailable,
    "start_date": startDate == null ? null : startDate!.toIso8601String(),
    "end_date": endDate == null ? null : endDate!.toIso8601String(),
    "login_required": loginRequired,
    "drm_key": drmKey,
    "pre_role_settings": preRoleSettings!.toJson(),
    "post_role_settings": postRoleSettings!.toJson(),
    "mid_role_settings": midRoleSettings!.toJson(),
    "overlay_settings": overlaySettings!.toJson(),
    "vmap_settings": vmapSettings == null ? null : vmapSettings!.toJson(),
    "vmap_url": vmapUrl == null ? null : vmapUrl,
  };
}

class MidRoleSettings {
  MidRoleSettings({
    this.mobileAdsUrl,
    this.adsUrl,
    this.midRoleFrequency,
    this.active,
    this.type,
    this.midrollPosition,
    this.frequency,
  });

  String? mobileAdsUrl;
  String? adsUrl;
  int? midRoleFrequency;
  bool? active;
  String? type;
  List<int>? midrollPosition;
  int? frequency;

  factory MidRoleSettings.fromJson(Map<String, dynamic> json) => MidRoleSettings(
    mobileAdsUrl: json["mobile_ads_url"],
    adsUrl: json["ads_url"],
    midRoleFrequency: json["mid_role_frequency"] == null ? null : json["mid_role_frequency"],
    active: json["active"],
    type: json["type"],
    midrollPosition: json["midroll_position"] == null ? null : List<int>.from(json["midroll_position"].map((x) => x)),
    frequency: json["frequency"] == null ? null : json["frequency"],
  );

  Map<String, dynamic> toJson() => {
    "mobile_ads_url": mobileAdsUrl,
    "ads_url": adsUrl,
    "mid_role_frequency": midRoleFrequency == null ? null : midRoleFrequency,
    "active": active,
    "type": type,
    "midroll_position": midrollPosition == null ? null : List<dynamic>.from(midrollPosition!.map((x) => x)),
    "frequency": frequency == null ? null : frequency,
  };
}

class Settings {
  Settings({
    this.mobileAdsUrl,
    this.adsUrl,
    this.overlayFrequency,
    this.active,
    this.type,
    this.vmapFrequency,
  });

  String? mobileAdsUrl;
  String? adsUrl;
  int? overlayFrequency;
  bool? active;
  String? type;
  int? vmapFrequency;

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
    mobileAdsUrl: json["mobile_ads_url"],
    adsUrl: json["ads_url"],
    overlayFrequency: json["overlay_frequency"] == null ? null : json["overlay_frequency"],
    active: json["active"],
    type: json["type"] == null ? null : json["type"],
    vmapFrequency: json["vmap_frequency"] == null ? null : json["vmap_frequency"],
  );

  Map<String, dynamic> toJson() => {
    "mobile_ads_url": mobileAdsUrl,
    "ads_url": adsUrl,
    "overlay_frequency": overlayFrequency == null ? null : overlayFrequency,
    "active": active,
    "type": type == null ? null : type,
    "vmap_frequency": vmapFrequency == null ? null : vmapFrequency,
  };
}

class AddMetadata {
  AddMetadata();

  factory AddMetadata.fromJson(Map<String, dynamic>? json) => AddMetadata(
  );

  Map<String, dynamic> toJson() => {
  };
}

class CatalogObject {
  CatalogObject({
    this.friendlyId,
    this.layoutType,
    this.id,
    this.planCategoryType,
    this.layoutScheme,
  });

  String? friendlyId;
  String? layoutType;
  String? id;
  String? planCategoryType;
  String? layoutScheme;

  factory CatalogObject.fromJson(Map<String, dynamic> json) => CatalogObject(
    friendlyId: json["friendly_id"],
    layoutType: json["layout_type"],
    id: json["id"],
    planCategoryType: json["plan_category_type"],
    layoutScheme: json["layout_scheme"] == null ? null : json["layout_scheme"],
  );

  Map<String, dynamic> toJson() => {
    "friendly_id": friendlyId,
    "layout_type": layoutType,
    "id": id,
    "plan_category_type": planCategoryType,
    "layout_scheme": layoutScheme == null ? null : layoutScheme,
  };
}

class ChannelLogo {
  ChannelLogo({
    this.xlLogo169,
    this.lLogo169,
    this.mLogo169,
    this.sLogo169,
  });

  LLarge? xlLogo169;
  LLarge? lLogo169;
  LLarge? mLogo169;
  LLarge? sLogo169;

  factory ChannelLogo.fromJson(Map<String, dynamic> json) => ChannelLogo(
    xlLogo169: LLarge.fromJson(json["xl_logo_16_9"]),
    lLogo169: LLarge.fromJson(json["l_logo_16_9"]),
    mLogo169: LLarge.fromJson(json["m_logo_16_9"]),
    sLogo169: LLarge.fromJson(json["s_logo_16_9"]),
  );

  Map<String, dynamic> toJson() => {
    "xl_logo_16_9": xlLogo169!.toJson(),
    "l_logo_16_9": lLogo169!.toJson(),
    "m_logo_16_9": mLogo169!.toJson(),
    "s_logo_16_9": sLogo169!.toJson(),
  };
}

class LLarge {
  LLarge({
    this.url,
  });

  String? url;

  factory LLarge.fromJson(Map<String, dynamic> json) => LLarge(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}

class ChannelObject {
  ChannelObject({
    this.name,
  });

  String? name;

  factory ChannelObject.fromJson(Map<String, dynamic> json) => ChannelObject(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}

class DefaultTrailer {
  DefaultTrailer({
    this.isAvailable,
    this.playUrl,
    this.durationString,
  });

  bool? isAvailable;
  AddMetadata? playUrl;
  String? durationString;

  factory DefaultTrailer.fromJson(Map<String, dynamic> json) => DefaultTrailer(
    isAvailable: json["is_available"],
    playUrl: AddMetadata.fromJson(json["play_url"]),
    durationString: json["duration_string"],
  );

  Map<String, dynamic> toJson() => {
    "is_available": isAvailable,
    "play_url": playUrl!.toJson(),
    "duration_string": durationString,
  };
}

class LastEpisode {
  LastEpisode({
    this.title,
    this.contentId,
    this.catalogId,
    this.catalogObject,
    this.language,
    this.genres,
    this.displayGenres,
    this.description,
    this.shortDescription,
    this.smartUrl,
    this.itemCaption,
    this.itemAdditionalData,
    this.episodeNumber,
    this.thumbnails,
    this.subcategoryId,
    this.showThemeId,
    this.rating,
    this.duration,
    this.people,
    this.catalogName,
    this.subcategoryName,
    this.showName,
    this.playUrl,
    this.playUrlType,
    this.mediaType,
    this.lastEpisodePart,
    this.totalParts,
    this.customFields,
    this.releaseDateString,
    this.releaseDateUts,
    this.durationString,
    this.friendlyId,
    this.shareUrl,
    this.showObject,
    this.channelObject,
    this.viewCount,
    this.viewCountFlag,
    this.preview,
    this.accessControl,
    this.svodIds,
    this.tvodId,
    this.tvodPrice,
    this.tvodCurrency,
    this.subcategoryObject,
  });

  String? title;
  String? contentId;
  String? catalogId;
  CatalogObject? catalogObject;
  String? language;
  List<String>? genres;
  List<String>? displayGenres;
  String? description;
  String? shortDescription;
  String? smartUrl;
  String? itemCaption;
  ItemAdditionalData? itemAdditionalData;
  String? episodeNumber;
  Map<String, LLarge>? thumbnails;
  String? subcategoryId;
  String? showThemeId;
  int? rating;
  int? duration;
  List<dynamic>? people;
  String? catalogName;
  String? subcategoryName;
  String? showName;
  PlayUrl? playUrl;
  String? playUrlType;
  String? mediaType;
  int? lastEpisodePart;
  int? totalParts;
  AddMetadata? customFields;
  DateTime? releaseDateString;
  int? releaseDateUts;
  String? durationString;
  String? friendlyId;
  String? shareUrl;
  ShowObject? showObject;
  ChannelObject? channelObject;
  int? viewCount;
  String? viewCountFlag;
  Preview? preview;
  AccessControl? accessControl;
  dynamic svodIds;
  dynamic tvodId;
  dynamic tvodPrice;
  dynamic tvodCurrency;
  SubcategoryObject? subcategoryObject;

  factory LastEpisode.fromJson(Map<String, dynamic> json) => LastEpisode(
    title: json["title"],
    contentId: json["content_id"],
    catalogId: json["catalog_id"],
    catalogObject: CatalogObject.fromJson(json["catalog_object"]),
    language: json["language"],
    genres: List<String>.from(json["genres"].map((x) => x)),
    displayGenres: List<String>.from(json["display_genres"].map((x) => x)),
    description: json["description"],
    shortDescription: json["short_description"],
    smartUrl: json["smart_url"],
    itemCaption: json["item_caption"],
    itemAdditionalData: ItemAdditionalData.fromJson(json["item_additional_data"]),
    episodeNumber: json["episode_number"],
    thumbnails: Map.from(json["thumbnails"]).map((k, v) => MapEntry<String, LLarge>(k, LLarge.fromJson(v))),
    subcategoryId: json["subcategory_id"],
    showThemeId: json["show_theme_id"],
    rating: json["rating"],
    duration: json["duration"],
    people: List<dynamic>.from(json["people"].map((x) => x)),
    catalogName: json["catalog_name"],
    subcategoryName: json["subcategory_name"],
    showName: json["show_name"],
    playUrl: PlayUrl.fromJson(json["play_url"]),
    playUrlType: json["play_url_type"],
    mediaType: json["media_type"],
    lastEpisodePart: json["part"],
    totalParts: json["total_parts"],
    customFields: AddMetadata.fromJson(json["custom_fields"]),
    releaseDateString: DateTime.parse(json["release_date_string"]),
    releaseDateUts: json["release_date_uts"],
    durationString: json["duration_string"],
    friendlyId: json["friendly_id"],
    shareUrl: json["share_url"],
    showObject: ShowObject.fromJson(json["show_object"]),
    channelObject: ChannelObject.fromJson(json["channel_object"]),
    viewCount: json["view_count"],
    viewCountFlag: json["view_count_flag"],
    preview: Preview.fromJson(json["preview"]),
    accessControl: AccessControl.fromJson(json["access_control"]),
    svodIds: json["svod_ids"],
    tvodId: json["tvod_id"],
    tvodPrice: json["tvod_price"],
    tvodCurrency: json["tvod_currency"],
    subcategoryObject: json["subcategory_object"] == null ? null : SubcategoryObject.fromJson(json["subcategory_object"]),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "content_id": contentId,
    "catalog_id": catalogId,
    "catalog_object": catalogObject!.toJson(),
    "language": language,
    "genres": List<dynamic>.from(genres!.map((x) => x)),
    "display_genres": List<dynamic>.from(displayGenres!.map((x) => x)),
    "description": description,
    "short_description": shortDescription,
    "smart_url": smartUrl,
    "item_caption": itemCaption,
    "item_additional_data": itemAdditionalData!.toJson(),
    "episode_number": episodeNumber,
    "thumbnails": Map.from(thumbnails!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "subcategory_id": subcategoryId,
    "show_theme_id": showThemeId,
    "rating": rating,
    "duration": duration,
    "people": List<dynamic>.from(people!.map((x) => x)),
    "catalog_name": catalogName,
    "subcategory_name": subcategoryName,
    "show_name": showName,
    "play_url": playUrl!.toJson(),
    "play_url_type": playUrlType,
    "media_type": mediaType,
    "part": lastEpisodePart,
    "total_parts": totalParts,
    "custom_fields": customFields!.toJson(),
    "release_date_string": releaseDateString!.toIso8601String(),
    "release_date_uts": releaseDateUts,
    "duration_string": durationString,
    "friendly_id": friendlyId,
    "share_url": shareUrl,
    "show_object": showObject!.toJson(),
    "channel_object": channelObject!.toJson(),
    "view_count": viewCount,
    "view_count_flag": viewCountFlag,
    "preview": preview!.toJson(),
    "access_control": accessControl!.toJson(),
    "svod_ids": svodIds,
    "tvod_id": tvodId,
    "tvod_price": tvodPrice,
    "tvod_currency": tvodCurrency,
    "subcategory_object": subcategoryObject == null ? null : subcategoryObject!.toJson(),
  };
}

class ItemAdditionalData {
  ItemAdditionalData({
    this.starring,
    this.directedBy,
  });

  List<dynamic>? starring;
  List<dynamic>? directedBy;

  factory ItemAdditionalData.fromJson(Map<String, dynamic> json) => ItemAdditionalData(
    starring: List<dynamic>.from(json["Starring"].map((x) => x)),
    directedBy: List<dynamic>.from(json["Directed By"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Starring": List<dynamic>.from(starring!.map((x) => x)),
    "Directed By": List<dynamic>.from(directedBy!.map((x) => x)),
  };
}

class PlayUrl {
  PlayUrl({
    this.saranyu,
  });

  LLarge? saranyu;

  factory PlayUrl.fromJson(Map<String, dynamic> json) => PlayUrl(
    saranyu: json["saranyu"] == null ? null : LLarge.fromJson(json["saranyu"]),
  );

  Map<String, dynamic> toJson() => {
    "saranyu": saranyu == null ? null : saranyu!.toJson(),
  };
}

class Preview {
  Preview({
    this.previewAvailable,
    this.previewStart,
    this.previewEnd,
    this.extPreviewUrl,
    this.extPreviews,
  });

  bool? previewAvailable;
  String? previewStart;
  String? previewEnd;
  String? extPreviewUrl;
  List<dynamic>? extPreviews;

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
    previewAvailable: json["preview_available"],
    previewStart: json["preview_start"],
    previewEnd: json["preview_end"],
    extPreviewUrl: json["ext_preview_url"],
    extPreviews: List<dynamic>.from(json["ext_previews"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "preview_available": previewAvailable,
    "preview_start": previewStart,
    "preview_end": previewEnd,
    "ext_preview_url": extPreviewUrl,
    "ext_previews": List<dynamic>.from(extPreviews!.map((x) => x)),
  };
}

class ShowObject {
  ShowObject({
    this.friendlyId,
  });

  String? friendlyId;

  factory ShowObject.fromJson(Map<String, dynamic> json) => ShowObject(
    friendlyId: json["friendly_id"],
  );

  Map<String, dynamic> toJson() => {
    "friendly_id": friendlyId,
  };
}

class SubcategoryObject {
  SubcategoryObject({
    this.parentree,
  });

  List<Parentree>? parentree;

  factory SubcategoryObject.fromJson(Map<String, dynamic> json) => SubcategoryObject(
    parentree: List<Parentree>.from(json["parentree"].map((x) => Parentree.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "parentree": List<dynamic>.from(parentree!.map((x) => x.toJson())),
  };
}

class Parentree {
  Parentree({
    this.subName,
    this.subId,
    this.friendlyId,
  });

  String? subName;
  String? subId;
  String? friendlyId;

  factory Parentree.fromJson(Map<String, dynamic> json) => Parentree(
    subName: json["sub_name"],
    subId: json["sub_id"],
    friendlyId: json["friendly_id"],
  );

  Map<String, dynamic> toJson() => {
    "sub_name": subName,
    "sub_id": subId,
    "friendly_id": friendlyId,
  };
}

class ListItemObject {
  ListItemObject({
    this.bannerImageWeb,
    this.bannerImage,
    this.bannerFlag,
    this.link,
    this.overlayText,
    this.startTime,
    this.endTime,
    this.durationString,
    this.secondaryLayer,
  });

  String? bannerImageWeb;
  String? bannerImage;
  String? bannerFlag;
  String? link;
  String? overlayText;
  DateTime? startTime;
  DateTime? endTime;
  String? durationString;
  List<dynamic>? secondaryLayer;

  factory ListItemObject.fromJson(Map<String, dynamic> json) => ListItemObject(
    bannerImageWeb: json["banner_image_web"],
    bannerImage: json["banner_image"],
    bannerFlag: json["banner_flag"],
    link: json["link"],
    overlayText: json["overlay_text"],
    startTime: DateTime.parse(json["start_time"]),
    endTime: DateTime.parse(json["end_time"]),
    durationString: json["duration_string"],
    secondaryLayer: List<dynamic>.from(json["secondary_layer"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "banner_image_web": bannerImageWeb,
    "banner_image": bannerImage,
    "banner_flag": bannerFlag,
    "link": link,
    "overlay_text": overlayText,
    "start_time": startTime!.toIso8601String(),
    "end_time": endTime!.toIso8601String(),
    "duration_string": durationString,
    "secondary_layer": List<dynamic>.from(secondaryLayer!.map((x) => x)),
  };
}

class MlTitle {
  MlTitle({
    this.code,
    this.text,
  });

  String? code;
  String? text;

  factory MlTitle.fromJson(Map<String, dynamic> json) => MlTitle(
    code: json["code"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "text": text,
  };
}

class TvodPlan {
  TvodPlan({
    this.priceTagId,
    this.tag,
    this.subscriptionThemeId,
    this.planDesc,
    this.extPlanId,
    this.quality,
    this.startWithinDuration,
    this.startWithinPeriod,
    this.regionPrices,
    this.appleProductId,
    this.appletvProductId,
    this.googleProductId,
    this.firetvProductId,
    this.platforms,
    this.isDefault,
    this.regionPriceId,
  });

  String? priceTagId;
  String? tag;
  String? subscriptionThemeId;
  String? planDesc;
  String? extPlanId;
  String? quality;
  int? startWithinDuration;
  String? startWithinPeriod;
  RegionPrices? regionPrices;
  String? appleProductId;
  String? appletvProductId;
  String? googleProductId;
  String? firetvProductId;
  List<dynamic>? platforms;
  bool? isDefault;
  String? regionPriceId;

  factory TvodPlan.fromJson(Map<String, dynamic> json) => TvodPlan(
    priceTagId: json["price_tag_id"],
    tag: json["tag"],
    subscriptionThemeId: json["subscription_theme_id"],
    planDesc: json["plan_desc"],
    extPlanId: json["ext_plan_id"],
    quality: json["quality"],
    startWithinDuration: json["start_within_duration"],
    startWithinPeriod: json["start_within_period"],
    regionPrices: RegionPrices.fromJson(json["region_prices"]),
    appleProductId: json["apple_product_id"],
    appletvProductId: json["appletv_product_id"],
    googleProductId: json["google_product_id"],
    firetvProductId: json["firetv_product_id"],
    platforms: List<dynamic>.from(json["platforms"].map((x) => x)),
    isDefault: json["is_default"],
    regionPriceId: json["region_price_id"],
  );

  Map<String, dynamic> toJson() => {
    "price_tag_id": priceTagId,
    "tag": tag,
    "subscription_theme_id": subscriptionThemeId,
    "plan_desc": planDesc,
    "ext_plan_id": extPlanId,
    "quality": quality,
    "start_within_duration": startWithinDuration,
    "start_within_period": startWithinPeriod,
    "region_prices": regionPrices!.toJson(),
    "apple_product_id": appleProductId,
    "appletv_product_id": appletvProductId,
    "google_product_id": googleProductId,
    "firetv_product_id": firetvProductId,
    "platforms": List<dynamic>.from(platforms!.map((x) => x)),
    "is_default": isDefault,
    "region_price_id": regionPriceId,
  };
}

class RegionPrices {
  RegionPrices({
    this.region,
    this.price,
    this.discountPrice,
    this.currency,
  });

  String? region;
  String? price;
  String? discountPrice;
  String? currency;

  factory RegionPrices.fromJson(Map<String, dynamic> json) => RegionPrices(
    region: json["region"],
    price: json["price"],
    discountPrice: json["discount_price"],
    currency: json["currency"],
  );

  Map<String, dynamic> toJson() => {
    "region": region,
    "price": price,
    "discount_price": discountPrice,
    "currency": currency,
  };
}

class CatalogListItemThumbnails {
  CatalogListItemThumbnails({
    this.lLarge,
    this.lMedium,
    this.pSmall,
    this.listItemBanner,
    this.listItemBannerWeb,
  });

  LLarge? lLarge;
  LLarge? lMedium;
  LLarge? pSmall;
  LLarge? listItemBanner;
  LLarge? listItemBannerWeb;

  factory CatalogListItemThumbnails.fromJson(Map<String, dynamic> json) => CatalogListItemThumbnails(
    lLarge: LLarge.fromJson(json["l_large"]),
    lMedium: LLarge.fromJson(json["l_medium"]),
    pSmall: LLarge.fromJson(json["p_small"]),
    listItemBanner: LLarge.fromJson(json["list_item_banner"]),
    listItemBannerWeb: LLarge.fromJson(json["list_item_banner_web"]),
  );

  Map<String, dynamic> toJson() => {
    "l_large": lLarge!.toJson(),
    "l_medium": lMedium!.toJson(),
    "p_small": pSmall!.toJson(),
    "list_item_banner": listItemBanner!.toJson(),
    "list_item_banner_web": listItemBannerWeb!.toJson(),
  };
}

class DataThumbnails {
  DataThumbnails({
    this.lLarge,
    this.lMedium,
    this.pSmall,
  });

  LLarge? lLarge;
  LLarge? lMedium;
  LLarge? pSmall;

  factory DataThumbnails.fromJson(Map<String, dynamic> json) => DataThumbnails(
    lLarge: LLarge.fromJson(json["l_large"]),
    lMedium: LLarge.fromJson(json["l_medium"]),
    pSmall: LLarge.fromJson(json["p_small"]),
  );

  Map<String, dynamic> toJson() => {
    "l_large": lLarge!.toJson(),
    "l_medium": lMedium!.toJson(),
    "p_small": pSmall!.toJson(),
  };
}
