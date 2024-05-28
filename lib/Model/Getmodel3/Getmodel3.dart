// To parse this JSON data, do
//
//     final getmodel3 = getmodel3FromJson(jsonString);

import 'dart:convert';

Getmodel3 getmodel3FromJson(String str) => Getmodel3.fromJson(json.decode(str));

String getmodel3ToJson(Getmodel3 data) => json.encode(data.toJson());

class Getmodel3 {
  Getmodel3({
    this.success,
    this.message,
    this.result,
    this.extra,
  });

  bool? success;
  dynamic message;
  Result? result;
  Extra? extra;

  factory Getmodel3.fromJson(Map<String, dynamic> json) => Getmodel3(
        success: json["success"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
        extra: Extra.fromJson(json["extra"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "result": result!.toJson(),
        "extra": extra!.toJson(),
      };
}

class Extra {
  Extra({
    this.count,
    this.preSearch,
    this.sidebar,
    this.tags,
  });

  List<dynamic>? count;
  List<dynamic>? preSearch;
  dynamic sidebar;
  List<dynamic>? tags;

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
        count: List<dynamic>.from(json["count"].map((x) => x)),
        preSearch: List<dynamic>.from(json["preSearch"].map((x) => x)),
        sidebar: json["sidebar"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": List<dynamic>.from(count!.map((x) => x)),
        "preSearch": List<dynamic>.from(preSearch!.map((x) => x)),
        "sidebar": sidebar,
        "tags": List<dynamic>.from(tags!.map((x) => x)),
      };
}

class Result {
  Result({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  Datum({
    this.id,
    this.countryCode,
    this.userId,
    this.categoryId,
    this.postTypeId,
    this.title,
    this.description,
    this.tags,
    this.price,
    this.negotiable,
    this.contactName,
    this.email,
    this.phone,
    this.phoneHidden,
    this.address,
    this.cityId,
    this.lon,
    this.lat,
    this.ipAddr,
    this.visits,
    this.emailToken,
    this.phoneToken,
    this.tmpToken,
    this.verifiedEmail,
    this.verifiedPhone,
    this.acceptTerms,
    this.acceptMarketingOffers,
    this.isPermanent,
    this.reviewed,
    this.featured,
    this.archived,
    this.archivedAt,
    this.archivedManually,
    this.deletionMailSentAt,
    this.fbProfile,
    this.partner,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.slug,
    this.created_At_Formatted,
    this.userPhotoUrl,
    this.pictures,
    this.user,
  });

  int? id;
  CountryCode? countryCode;
  String? userId;
  String? categoryId;
  dynamic postTypeId;
  String? title;
  String? description;
  List<String>? tags;
  String? price;
  dynamic negotiable;
  Name? contactName;
  Email? email;
  String? phone;
  dynamic phoneHidden;
  dynamic address;
  String? cityId;
  String? lon;
  String? lat;
  IpAddr? ipAddr;
  String? visits;
  dynamic emailToken;
  dynamic phoneToken;
  String? tmpToken;
  String? verifiedEmail;
  String? verifiedPhone;
  String? acceptTerms;
  String? acceptMarketingOffers;
  String? isPermanent;
  String? reviewed;
  String? featured;
  String? archived;
  DateTime? archivedAt;
  String? archivedManually;
  dynamic deletionMailSentAt;
  dynamic fbProfile;
  dynamic partner;
  DateTime? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? slug;
  String? created_At_Formatted;
  String? userPhotoUrl;
  List<Picture>? pictures;
  User? user;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        countryCode: countryCodeValues.map[json["country_code"]],
        userId: json["user_id"],
        categoryId: json["category_id"],
        postTypeId: json["post_type_id"],
        title: json["title"],
        description: json["description"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        price: json["price"],
        negotiable: json["negotiable"],
        contactName: nameValues.map[json["contact_name"]],
        email: emailValues.map[json["email"]],
        phone: json["phone"],
        phoneHidden: json["phone_hidden"],
        address: json["address"],
        cityId: json["city_id"],
        lon: json["lon"],
        lat: json["lat"],
        ipAddr: ipAddrValues.map[json["ip_addr"]],
        visits: json["visits"],
        emailToken: json["email_token"],
        phoneToken: json["phone_token"],
        tmpToken: json["tmp_token"],
        verifiedEmail: json["verified_email"],
        verifiedPhone: json["verified_phone"],
        acceptTerms: json["accept_terms"],
        acceptMarketingOffers: json["accept_marketing_offers"],
        isPermanent: json["is_permanent"],
        reviewed: json["reviewed"],
        featured: json["featured"],
        archived: json["archived"],
        archivedAt: DateTime.parse(json["archived_at"]),
        archivedManually: json["archived_manually"],
        deletionMailSentAt: json["deletion_mail_sent_at"],
        fbProfile: json["fb_profile"],
        partner: json["partner"],
        deletedAt: DateTime.parse(json["deleted_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        slug: json["slug"],
        created_At_Formatted: json["created_at_formatted"],
        userPhotoUrl: json["user_photo_url"],
        pictures: List<Picture>.from(
            json["pictures"].map((x) => Picture.fromJson(x))),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country_code": countryCodeValues.reverse[countryCode],
        "user_id": userId,
        "category_id": categoryId,
        "post_type_id": postTypeId,
        "title": title,
        "description": description,
        "tags": List<dynamic>.from(tags!.map((x) => x)),
        "price": price,
        "negotiable": negotiable,
        "contact_name": nameValues.reverse[contactName],
        "email": emailValues.reverse[email],
        "phone": phone,
        "phone_hidden": phoneHidden,
        "address": address,
        "city_id": cityId,
        "lon": lon,
        "lat": lat,
        "ip_addr": ipAddrValues.reverse[ipAddr],
        "visits": visits,
        "email_token": emailToken,
        "phone_token": phoneToken,
        "tmp_token": tmpToken,
        "verified_email": verifiedEmail,
        "verified_phone": verifiedPhone,
        "accept_terms": acceptTerms,
        "accept_marketing_offers": acceptMarketingOffers,
        "is_permanent": isPermanent,
        "reviewed": reviewed,
        "featured": featured,
        "archived": archived,
        "archived_at": archivedAt!.toIso8601String(),
        "archived_manually": archivedManually,
        "deletion_mail_sent_at": deletionMailSentAt,
        "fb_profile": fbProfile,
        "partner": partner,
        "deleted_at": deletedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "slug": slug,
        "created_at_formatted": created_At_Formatted,
        "user_photo_url": userPhotoUrl,
        "pictures": List<dynamic>.from(pictures!.map((x) => x.toJson())),
        "user": user!.toJson(),
      };
}

enum Name { CUSTOMER_SERVICE }

final nameValues = EnumValues({"Customer Service": Name.CUSTOMER_SERVICE});

enum CountryCode { PK }

final countryCodeValues = EnumValues({"PK": CountryCode.PK});

enum Email { CS_PP_PORTAL_GMAIL_COM }

final emailValues =
    EnumValues({"cs.pp.portal@gmail.com": Email.CS_PP_PORTAL_GMAIL_COM});

enum IpAddr { THE_11188201108, THE_11188120127 }

final ipAddrValues = EnumValues({
  "111.88.120.127": IpAddr.THE_11188120127,
  "111.88.201.108": IpAddr.THE_11188201108
});

class Picture {
  Picture({
    this.id,
    this.postId,
    this.filename,
    this.mimeType,
    this.position,
    this.active,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? postId;
  String? filename;
  MimeType? mimeType;
  String? position;
  String? active;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        id: json["id"],
        postId: json["post_id"],
        filename: json["filename"],
        mimeType: mimeTypeValues.map[json["mime_type"]],
        position: json["position"],
        active: json["active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "post_id": postId,
        "filename": filename,
        "mime_type": mimeTypeValues.reverse[mimeType],
        "position": position,
        "active": active,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

enum MimeType { IMAGE_JPEG }

final mimeTypeValues = EnumValues({"image/jpeg": MimeType.IMAGE_JPEG});

class User {
  User({
    this.id,
    this.countryCode,
    this.languageCode,
    this.userTypeId,
    this.genderId,
    this.name,
    this.photo,
    this.about,
    this.phone,
    this.phoneHidden,
    this.username,
    this.email,
    this.emailVerifiedAt,
    this.isAdmin,
    this.canBeImpersonated,
    this.disableComments,
    this.ipAddr,
    this.provider,
    this.providerId,
    this.emailToken,
    this.phoneToken,
    this.verifiedEmail,
    this.verifiedPhone,
    this.acceptTerms,
    this.acceptMarketingOffers,
    this.timeZone,
    this.blocked,
    this.closed,
    this.lastActivity,
    this.lastLoginAt,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.createdAtFormatted,
    this.photoUrl,
    this.originalUpdatedAt,
    this.originalLastActivity,
    this.pIsOnline,
    this.permissions,
    this.roles,
  });

  int? id;
  CountryCode? countryCode;
  LanguageCode? languageCode;
  dynamic userTypeId;
  dynamic genderId;
  Name? name;
  Photo? photo;
  dynamic about;
  String? phone;
  String? phoneHidden;
  dynamic username;
  Email? email;
  dynamic emailVerifiedAt;
  String? isAdmin;
  String? canBeImpersonated;
  String? disableComments;
  dynamic ipAddr;
  dynamic provider;
  dynamic providerId;
  dynamic emailToken;
  dynamic phoneToken;
  String? verifiedEmail;
  String? verifiedPhone;
  String? acceptTerms;
  String? acceptMarketingOffers;
  dynamic timeZone;
  String? blocked;
  String? closed;
  DateTime? lastActivity;
  DateTime? lastLoginAt;
  DateTime? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? createdAtFormatted;
  String? photoUrl;
  DateTime? originalUpdatedAt;
  dynamic originalLastActivity;
  bool? pIsOnline;
  List<dynamic>? permissions;
  List<dynamic>? roles;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        countryCode: countryCodeValues.map[json["country_code"]],
        languageCode: languageCodeValues.map[json["language_code"]],
        userTypeId: json["user_type_id"],
        genderId: json["gender_id"],
        name: nameValues.map[json["name"]],
        photo: photoValues.map[json["photo"]],
        about: json["about"],
        phone: json["phone"],
        phoneHidden: json["phone_hidden"],
        username: json["username"],
        email: emailValues.map[json["email"]],
        emailVerifiedAt: json["email_verified_at"],
        isAdmin: json["is_admin"],
        canBeImpersonated: json["can_be_impersonated"],
        disableComments: json["disable_comments"],
        ipAddr: json["ip_addr"],
        provider: json["provider"],
        providerId: json["provider_id"],
        emailToken: json["email_token"],
        phoneToken: json["phone_token"],
        verifiedEmail: json["verified_email"],
        verifiedPhone: json["verified_phone"],
        acceptTerms: json["accept_terms"],
        acceptMarketingOffers: json["accept_marketing_offers"],
        timeZone: json["time_zone"],
        blocked: json["blocked"],
        closed: json["closed"],
        lastActivity: DateTime.parse(json["last_activity"]),
        lastLoginAt: DateTime.parse(json["last_login_at"]),
        deletedAt: DateTime.parse(json["deleted_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAtFormatted: json["created_at_formatted"],
        photoUrl: json["photo_url"],
        originalUpdatedAt: DateTime.parse(json["original_updated_at"]),
        originalLastActivity: json["original_last_activity"],
        pIsOnline: json["p_is_online"],
        permissions: List<dynamic>.from(json["permissions"].map((x) => x)),
        roles: List<dynamic>.from(json["roles"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country_code": countryCodeValues.reverse[countryCode],
        "language_code": languageCodeValues.reverse[languageCode],
        "user_type_id": userTypeId,
        "gender_id": genderId,
        "name": nameValues.reverse[name],
        "photo": photoValues.reverse[photo],
        "about": about,
        "phone": phone,
        "phone_hidden": phoneHidden,
        "username": username,
        "email": emailValues.reverse[email],
        "email_verified_at": emailVerifiedAt,
        "is_admin": isAdmin,
        "can_be_impersonated": canBeImpersonated,
        "disable_comments": disableComments,
        "ip_addr": ipAddr,
        "provider": provider,
        "provider_id": providerId,
        "email_token": emailToken,
        "phone_token": phoneToken,
        "verified_email": verifiedEmail,
        "verified_phone": verifiedPhone,
        "accept_terms": acceptTerms,
        "accept_marketing_offers": acceptMarketingOffers,
        "time_zone": timeZone,
        "blocked": blocked,
        "closed": closed,
        "last_activity": lastActivity!.toIso8601String(),
        "last_login_at": lastLoginAt!.toIso8601String(),
        "deleted_at": deletedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "created_at_formatted": createdAtFormatted,
        "photo_url": photoUrl,
        "original_updated_at": originalUpdatedAt!.toIso8601String(),
        "original_last_activity": originalLastActivity,
        "p_is_online": pIsOnline,
        "permissions": List<dynamic>.from(permissions!.map((x) => x)),
        "roles": List<dynamic>.from(roles!.map((x) => x)),
      };
}

enum LanguageCode { EN }

final languageCodeValues = EnumValues({"en": LanguageCode.EN});

enum Photo { AVATARS_PK_295_B5641_BC9_A4981_FB85_B2_E87_B65788_F58_PNG }

final photoValues = EnumValues({
  "avatars/pk/29/5b5641bc9a4981fb85b2e87b65788f58.png":
      Photo.AVATARS_PK_295_B5641_BC9_A4981_FB85_B2_E87_B65788_F58_PNG
});

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
