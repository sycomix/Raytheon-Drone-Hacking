.class public Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
.super Ljava/lang/Object;
.source "ARAcademyProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_PROFILE_ADDRESS_1:Ljava/lang/String; = "address_1"

.field private static final ARACADEMY_PROFILE_ADDRESS_2:Ljava/lang/String; = "address_2"

.field private static final ARACADEMY_PROFILE_ADDRESS_COMMENTS:Ljava/lang/String; = "address_comments"

.field private static final ARACADEMY_PROFILE_AVATAR:Ljava/lang/String; = "avatar"

.field private static final ARACADEMY_PROFILE_BIOGRAPHY:Ljava/lang/String; = "biography"

.field private static final ARACADEMY_PROFILE_BIRTH_DATE:Ljava/lang/String; = "birth_date"

.field private static final ARACADEMY_PROFILE_CITY:Ljava/lang/String; = "city"

.field private static final ARACADEMY_PROFILE_CIVILITY:Ljava/lang/String; = "civility"

.field private static final ARACADEMY_PROFILE_COMMENTS:Ljava/lang/String; = "comments"

.field private static final ARACADEMY_PROFILE_COUNTRY:Ljava/lang/String; = "country"

.field private static final ARACADEMY_PROFILE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ARACADEMY_PROFILE_EMAIL_ACADEMY:Ljava/lang/String; = "email_academy"

.field private static final ARACADEMY_PROFILE_EMAIL_PARTNAIRS:Ljava/lang/String; = "email_partnairs"

.field private static final ARACADEMY_PROFILE_FACEBOOK:Ljava/lang/String; = "facebook"

.field private static final ARACADEMY_PROFILE_FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final ARACADEMY_PROFILE_FLIGHT_NUMBER:Ljava/lang/String; = "flight_number"

.field private static final ARACADEMY_PROFILE_GMAIL:Ljava/lang/String; = "gmail"

.field private static final ARACADEMY_PROFILE_GOOGLE_PLUS:Ljava/lang/String; = "google_plus"

.field private static final ARACADEMY_PROFILE_ID:Ljava/lang/String; = "id"

.field private static final ARACADEMY_PROFILE_LAST_NAME:Ljava/lang/String; = "last_name"

.field private static final ARACADEMY_PROFILE_LAT:Ljava/lang/String; = "lat"

.field private static final ARACADEMY_PROFILE_LNG:Ljava/lang/String; = "lng"

.field private static final ARACADEMY_PROFILE_MOBILE:Ljava/lang/String; = "mobile"

.field private static final ARACADEMY_PROFILE_MODIFICATION_DATE:Ljava/lang/String; = "modification_date"

.field private static final ARACADEMY_PROFILE_MSN:Ljava/lang/String; = "msn"

.field private static final ARACADEMY_PROFILE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PROFILE_PHONE:Ljava/lang/String; = "phone"

.field private static final ARACADEMY_PROFILE_POSTAL_CODE:Ljava/lang/String; = "postal_code"

.field private static final ARACADEMY_PROFILE_PSN:Ljava/lang/String; = "psn"

.field private static final ARACADEMY_PROFILE_RUN_VISIBILITY:Ljava/lang/String; = "run_visibility"

.field private static final ARACADEMY_PROFILE_SKYPE:Ljava/lang/String; = "skype"

.field private static final ARACADEMY_PROFILE_STATUS:Ljava/lang/String; = "status"

.field private static final ARACADEMY_PROFILE_STEAM:Ljava/lang/String; = "steam"

.field private static final ARACADEMY_PROFILE_TAG:Ljava/lang/String; = "ARAcademyProfile"

.field private static final ARACADEMY_PROFILE_TAGS:Ljava/lang/String; = "tags"

.field private static final ARACADEMY_PROFILE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final ARACADEMY_PROFILE_USER:Ljava/lang/String; = "user"

.field private static final ARACADEMY_PROFILE_WEBSITE:Ljava/lang/String; = "website"

.field private static final ARACADEMY_PROFILE_XBOX_LIVE:Ljava/lang/String; = "xbox_live"

.field private static final ARACADEMY_PROFILE_YOUTUBE:Ljava/lang/String; = "youtube"


# instance fields
.field protected profileAddress1:Ljava/lang/String;

.field protected profileAddress2:Ljava/lang/String;

.field protected profileAddressComments:Ljava/lang/String;

.field protected profileAvatar:Ljava/lang/String;

.field protected profileBiography:Ljava/lang/String;

.field protected profileBirthDate:Ljava/util/Date;

.field protected profileCity:Ljava/lang/String;

.field protected profileCivility:I

.field protected profileComments:Ljava/lang/String;

.field protected profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

.field protected profileEmailAcademy:Z

.field protected profileEmailPartnairs:Z

.field protected profileFacebook:Ljava/lang/String;

.field protected profileFirstName:Ljava/lang/String;

.field protected profileFlightNumber:I

.field protected profileGmail:Ljava/lang/String;

.field protected profileGooglePlus:Ljava/lang/String;

.field protected profileId:I

.field protected profileLastName:Ljava/lang/String;

.field protected profileLat:Ljava/lang/String;

.field protected profileLng:Ljava/lang/String;

.field protected profileMobile:Ljava/lang/String;

.field protected profileModificationDate:Ljava/util/Date;

.field protected profileMsn:Ljava/lang/String;

.field protected profilePhone:Ljava/lang/String;

.field protected profilePostalCode:Ljava/lang/String;

.field protected profilePsn:Ljava/lang/String;

.field protected profileRunVisibility:Z

.field protected profileSkype:Ljava/lang/String;

.field protected profileStatus:Ljava/lang/String;

.field protected profileSteam:Ljava/lang/String;

.field protected profileTags:Ljava/lang/String;

.field protected profileTwitter:Ljava/lang/String;

.field protected profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

.field protected profileWebsite:Ljava/lang/String;

.field protected profileXboxLive:Ljava/lang/String;

.field protected profileYoutube:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    .line 74
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    .line 76
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    .line 77
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    .line 79
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    .line 80
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    .line 81
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    .line 82
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    .line 83
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    .line 84
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    .line 85
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    .line 88
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    .line 89
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    .line 90
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    .line 91
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    .line 92
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    .line 93
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    .line 94
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    .line 95
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    .line 97
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    .line 98
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    .line 99
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    .line 102
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    .line 103
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    .line 104
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    .line 106
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    .line 107
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    .line 124
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    .line 129
    :cond_0
    const-string/jumbo v2, "user"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .line 134
    :cond_1
    const-string v2, "avatar"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const-string v2, "avatar"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    .line 139
    :cond_2
    const-string v2, "status"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    .line 144
    :cond_3
    const-string v2, "civility"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    const-string v2, "civility"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    .line 149
    :cond_4
    const-string v2, "first_name"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    const-string v2, "first_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    .line 154
    :cond_5
    const-string v2, "last_name"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 156
    const-string v2, "last_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    .line 159
    :cond_6
    const-string v2, "birth_date"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 161
    const-string v2, "birth_date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "dateString":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    .line 166
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    const-string v2, "phone"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    .line 171
    :cond_8
    const-string v2, "mobile"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 173
    const-string v2, "mobile"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    .line 176
    :cond_9
    const-string v2, "address_1"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 178
    const-string v2, "address_1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    .line 181
    :cond_a
    const-string v2, "address_2"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 183
    const-string v2, "address_2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    .line 186
    :cond_b
    const-string v2, "address_comments"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 188
    const-string v2, "address_comments"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    .line 191
    :cond_c
    const-string v2, "postal_code"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 193
    const-string v2, "postal_code"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    .line 196
    :cond_d
    const-string v2, "city"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 198
    const-string v2, "city"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    .line 201
    :cond_e
    const-string v2, "country"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 203
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    const-string v3, "country"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 206
    :cond_f
    const-string v2, "run_visibility"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 208
    const-string v2, "run_visibility"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    .line 211
    :cond_10
    const-string/jumbo v2, "website"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 213
    const-string/jumbo v2, "website"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    .line 216
    :cond_11
    const-string v2, "facebook"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 218
    const-string v2, "facebook"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    .line 221
    :cond_12
    const-string/jumbo v2, "twitter"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 223
    const-string/jumbo v2, "twitter"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    .line 226
    :cond_13
    const-string v2, "google_plus"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 228
    const-string v2, "google_plus"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    .line 231
    :cond_14
    const-string/jumbo v2, "youtube"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 233
    const-string/jumbo v2, "youtube"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    .line 236
    :cond_15
    const-string v2, "psn"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 238
    const-string v2, "psn"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    .line 241
    :cond_16
    const-string/jumbo v2, "xbox_live"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 243
    const-string/jumbo v2, "xbox_live"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    .line 246
    :cond_17
    const-string v2, "gmail"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 248
    const-string v2, "gmail"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    .line 251
    :cond_18
    const-string v2, "email_academy"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 253
    const-string v2, "email_academy"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    .line 256
    :cond_19
    const-string v2, "msn"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 258
    const-string v2, "msn"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    .line 261
    :cond_1a
    const-string v2, "steam"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 263
    const-string v2, "steam"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    .line 266
    :cond_1b
    const-string v2, "skype"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 268
    const-string v2, "skype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    .line 271
    :cond_1c
    const-string v2, "modification_date"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 273
    const-string v2, "modification_date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0    # "dateString":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    .line 278
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1d
    const-string v2, "email_partnairs"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 280
    const-string v2, "email_partnairs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    .line 283
    :cond_1e
    const-string v2, "lat"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 285
    const-string v2, "lat"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    .line 288
    :cond_1f
    const-string v2, "lng"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 290
    const-string v2, "lng"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    .line 293
    :cond_20
    const-string/jumbo v2, "tags"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 295
    const-string/jumbo v2, "tags"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    .line 298
    :cond_21
    const-string v2, "flight_number"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 300
    const-string v2, "flight_number"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    .line 303
    :cond_22
    const-string v2, "biography"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 305
    const-string v2, "biography"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    .line 308
    :cond_23
    const-string v2, "comments"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 310
    const-string v2, "comments"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    .line 313
    :cond_24
    return-void
.end method

.method private static checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .prologue
    .line 1176
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1181
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1183
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1185
    const-string/jumbo v4, "user"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyUser;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    :goto_0
    const-string v4, "status"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1194
    const-string v4, "civility"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCivility()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1196
    const-string v4, "first_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1198
    const-string v4, "last_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1200
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1202
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "birth_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1207
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1209
    const-string v4, "mobile"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMobile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1211
    const-string v4, "address_1"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1213
    const-string v4, "address_2"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1215
    const-string v4, "address_comments"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddressComments()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1217
    const-string v4, "postal_code"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1219
    const-string v4, "city"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1221
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1223
    const-string v4, "country"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1230
    :goto_1
    const-string v4, "run_visibility"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getRunVisibility()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1232
    const-string/jumbo v4, "website"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1234
    const-string v4, "facebook"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1236
    const-string/jumbo v4, "twitter"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTwitter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1238
    const-string v4, "google_plus"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGooglePlus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1240
    const-string/jumbo v4, "youtube"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1242
    const-string v4, "psn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1244
    const-string/jumbo v4, "xbox_live"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    const-string v4, "gmail"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1248
    const-string v4, "email_academy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailAcademy()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1250
    const-string v4, "msn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMsn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1252
    const-string v4, "steam"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1254
    const-string v4, "skype"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSkype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1256
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1258
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1259
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .restart local v0    # "dateString":Ljava/lang/String;
    const-string v4, "modification_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1263
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "email_partnairs"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailPartnairs()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1265
    const-string v4, "lat"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    const-string v4, "lng"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    const-string/jumbo v4, "tags"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1271
    const-string v4, "flight_number"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFlightNumber()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1273
    const-string v4, "biography"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    const-string v4, "comments"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getComments()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1283
    :goto_2
    return-object v2

    .line 1189
    :cond_2
    const-string/jumbo v4, "user"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1278
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1227
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v4, "country"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .prologue
    .line 950
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 955
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 957
    :cond_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 960
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 961
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 963
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 965
    const-string/jumbo v4, "user"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyUser;Lcom/parrot/arsdk/aracademy/ARAcademyUser;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 973
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_6

    .line 975
    :cond_5
    const-string v4, "status"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 978
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCivility()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCivility()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 980
    :cond_7
    const-string v4, "civility"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCivility()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 983
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_a

    .line 985
    :cond_9
    const-string v4, "first_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 988
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_c

    .line 990
    :cond_b
    const-string v4, "last_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v5

    if-eq v4, v5, :cond_e

    .line 995
    :cond_d
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 997
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 998
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "birth_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_10

    .line 1005
    :cond_f
    const-string v4, "phone"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    :cond_10
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMobile()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_12

    .line 1010
    :cond_11
    const-string v4, "mobile"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMobile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1013
    :cond_12
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_14

    .line 1015
    :cond_13
    const-string v4, "address_1"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    :cond_14
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress2()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_16

    .line 1020
    :cond_15
    const-string v4, "address_2"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1023
    :cond_16
    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddressComments()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddressComments()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_18

    .line 1025
    :cond_17
    const-string v4, "address_comments"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddressComments()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1028
    :cond_18
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_1a

    .line 1030
    :cond_19
    const-string v4, "postal_code"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    :cond_1a
    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_1c

    .line 1035
    :cond_1b
    const-string v4, "city"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    :cond_1c
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1039
    :cond_1d
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-nez v4, :cond_1f

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 1041
    :cond_1e
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 1043
    const-string v4, "country"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1051
    :cond_1f
    :goto_1
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getRunVisibility()Z

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getRunVisibility()Z

    move-result v5

    if-eq v4, v5, :cond_21

    .line 1053
    :cond_20
    const-string v4, "run_visibility"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getRunVisibility()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1056
    :cond_21
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_23

    .line 1058
    :cond_22
    const-string/jumbo v4, "website"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    :cond_23
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_25

    .line 1063
    :cond_24
    const-string v4, "facebook"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    :cond_25
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTwitter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTwitter()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_27

    .line 1068
    :cond_26
    const-string/jumbo v4, "twitter"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTwitter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    :cond_27
    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGooglePlus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGooglePlus()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_29

    .line 1073
    :cond_28
    const-string v4, "google_plus"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGooglePlus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1076
    :cond_29
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_2b

    .line 1078
    :cond_2a
    const-string/jumbo v4, "youtube"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1081
    :cond_2b
    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_2d

    .line 1083
    :cond_2c
    const-string v4, "psn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1086
    :cond_2d
    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_2f

    .line 1088
    :cond_2e
    const-string/jumbo v4, "xbox_live"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1091
    :cond_2f
    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGmail()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_31

    .line 1093
    :cond_30
    const-string v4, "gmail"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1096
    :cond_31
    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailAcademy()Z

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailAcademy()Z

    move-result v5

    if-eq v4, v5, :cond_33

    .line 1098
    :cond_32
    const-string v4, "email_academy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailAcademy()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1101
    :cond_33
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMsn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMsn()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_35

    .line 1103
    :cond_34
    const-string v4, "msn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMsn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1106
    :cond_35
    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_37

    .line 1108
    :cond_36
    const-string v4, "steam"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    :cond_37
    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSkype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSkype()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_39

    .line 1113
    :cond_38
    const-string v4, "skype"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSkype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    :cond_39
    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v5

    if-eq v4, v5, :cond_3b

    .line 1118
    :cond_3a
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 1120
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1121
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .restart local v0    # "dateString":Ljava/lang/String;
    const-string v4, "modification_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3b
    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailPartnairs()Z

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailPartnairs()Z

    move-result v5

    if-eq v4, v5, :cond_3d

    .line 1128
    :cond_3c
    const-string v4, "email_partnairs"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailPartnairs()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1131
    :cond_3d
    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLat()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_3f

    .line 1133
    :cond_3e
    const-string v4, "lat"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1136
    :cond_3f
    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLng()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLng()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_41

    .line 1138
    :cond_40
    const-string v4, "lng"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1141
    :cond_41
    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTags()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_43

    .line 1143
    :cond_42
    const-string/jumbo v4, "tags"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTags()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1146
    :cond_43
    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFlightNumber()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFlightNumber()I

    move-result v5

    if-eq v4, v5, :cond_45

    .line 1148
    :cond_44
    const-string v4, "flight_number"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFlightNumber()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1151
    :cond_45
    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_47

    .line 1153
    :cond_46
    const-string v4, "biography"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1156
    :cond_47
    if-eqz p1, :cond_48

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getComments()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getComments()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_49

    .line 1158
    :cond_48
    const-string v4, "comments"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getComments()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1167
    :cond_49
    :goto_2
    return-object v2

    .line 969
    :cond_4a
    const-string/jumbo v4, "user"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1162
    :catch_0
    move-exception v1

    .line 1164
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1047
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4b
    :try_start_1
    const-string v4, "country"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 702
    const/4 v2, 0x0

    .line 706
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-object v2, v0

    .line 707
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    .line 709
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .line 713
    :cond_0
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    .line 714
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    .line 715
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    .line 716
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    .line 717
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    .line 719
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    .line 724
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    .line 725
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    .line 726
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    .line 727
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    .line 728
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    .line 729
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    .line 731
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    if-eqz v3, :cond_2

    .line 733
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 735
    :cond_2
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    .line 736
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    .line 737
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    .line 738
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    .line 739
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    .line 740
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    .line 741
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    .line 742
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    .line 743
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    .line 744
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    .line 745
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    .line 746
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    .line 747
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    .line 749
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 751
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    .line 753
    :cond_3
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    .line 754
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    .line 755
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    .line 756
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    .line 757
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    .line 758
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    .line 759
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    return-object v2

    .line 761
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 771
    const/4 v0, 0x1

    .line 773
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-nez v2, :cond_2

    .line 775
    :cond_0
    const/4 v0, 0x0

    .line 939
    :cond_1
    :goto_0
    return v0

    .line 777
    :cond_2
    if-ne p1, p0, :cond_3

    .line 779
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 784
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 785
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getId()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    if-eq v2, v3, :cond_4

    .line 787
    const/4 v0, 0x0

    .line 789
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 790
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    if-eqz v2, :cond_7

    .line 792
    :cond_6
    const/4 v0, 0x0

    .line 794
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    .line 796
    const/4 v0, 0x0

    .line 798
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    .line 800
    const/4 v0, 0x0

    .line 802
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCivility()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    if-eq v2, v3, :cond_a

    .line 804
    const/4 v0, 0x0

    .line 806
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    .line 808
    const/4 v0, 0x0

    .line 810
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    .line 812
    const/4 v0, 0x0

    .line 814
    :cond_c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 815
    :cond_d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    if-eqz v2, :cond_f

    .line 817
    :cond_e
    const/4 v0, 0x0

    .line 819
    :cond_f
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    if-eq v2, v3, :cond_10

    .line 821
    const/4 v0, 0x0

    .line 823
    :cond_10
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMobile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    if-eq v2, v3, :cond_11

    .line 825
    const/4 v0, 0x0

    .line 827
    :cond_11
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    if-eq v2, v3, :cond_12

    .line 829
    const/4 v0, 0x0

    .line 831
    :cond_12
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    if-eq v2, v3, :cond_13

    .line 833
    const/4 v0, 0x0

    .line 835
    :cond_13
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddressComments()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    if-eq v2, v3, :cond_14

    .line 837
    const/4 v0, 0x0

    .line 839
    :cond_14
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    if-eq v2, v3, :cond_15

    .line 841
    const/4 v0, 0x0

    .line 843
    :cond_15
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    if-eq v2, v3, :cond_16

    .line 845
    const/4 v0, 0x0

    .line 847
    :cond_16
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 848
    :cond_17
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    if-eqz v2, :cond_19

    .line 850
    :cond_18
    const/4 v0, 0x0

    .line 852
    :cond_19
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getRunVisibility()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    if-eq v2, v3, :cond_1a

    .line 854
    const/4 v0, 0x0

    .line 856
    :cond_1a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    if-eq v2, v3, :cond_1b

    .line 858
    const/4 v0, 0x0

    .line 860
    :cond_1b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    if-eq v2, v3, :cond_1c

    .line 862
    const/4 v0, 0x0

    .line 864
    :cond_1c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTwitter()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    if-eq v2, v3, :cond_1d

    .line 866
    const/4 v0, 0x0

    .line 868
    :cond_1d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGooglePlus()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    if-eq v2, v3, :cond_1e

    .line 870
    const/4 v0, 0x0

    .line 872
    :cond_1e
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    if-eq v2, v3, :cond_1f

    .line 874
    const/4 v0, 0x0

    .line 876
    :cond_1f
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    if-eq v2, v3, :cond_20

    .line 878
    const/4 v0, 0x0

    .line 880
    :cond_20
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    if-eq v2, v3, :cond_21

    .line 882
    const/4 v0, 0x0

    .line 884
    :cond_21
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    if-eq v2, v3, :cond_22

    .line 886
    const/4 v0, 0x0

    .line 888
    :cond_22
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailAcademy()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    if-eq v2, v3, :cond_23

    .line 890
    const/4 v0, 0x0

    .line 892
    :cond_23
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getMsn()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    if-eq v2, v3, :cond_24

    .line 894
    const/4 v0, 0x0

    .line 896
    :cond_24
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    if-eq v2, v3, :cond_25

    .line 898
    const/4 v0, 0x0

    .line 900
    :cond_25
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSkype()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    if-eq v2, v3, :cond_26

    .line 902
    const/4 v0, 0x0

    .line 904
    :cond_26
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 905
    :cond_27
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    if-eqz v2, :cond_29

    .line 907
    :cond_28
    const/4 v0, 0x0

    .line 909
    :cond_29
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getEmailPartnairs()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    if-eq v2, v3, :cond_2a

    .line 911
    const/4 v0, 0x0

    .line 913
    :cond_2a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    if-eq v2, v3, :cond_2b

    .line 915
    const/4 v0, 0x0

    .line 917
    :cond_2b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLng()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    if-eq v2, v3, :cond_2c

    .line 919
    const/4 v0, 0x0

    .line 921
    :cond_2c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTags()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    if-eq v2, v3, :cond_2d

    .line 923
    const/4 v0, 0x0

    .line 925
    :cond_2d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFlightNumber()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    if-eq v2, v3, :cond_2e

    .line 927
    const/4 v0, 0x0

    .line 929
    :cond_2e
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBiography()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    if-eq v2, v3, :cond_2f

    .line 931
    const/4 v0, 0x0

    .line 933
    :cond_2f
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getComments()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 935
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCivility()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    return-object v0
.end method

.method public getEmailAcademy()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    return v0
.end method

.method public getEmailPartnairs()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    return v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightNumber()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    return v0
.end method

.method public getGmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    return-object v0
.end method

.method public getRunVisibility()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    return v0
.end method

.method public getSkype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSteam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public getXboxLive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    return-object v0
.end method

.method public getYoutube()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Avatar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Civility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FirstName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BirthDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mobile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AddressComments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PostalCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", City: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Country: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RunVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Website: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Facebook: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Twitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GooglePlus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Youtube: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Psn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", XboxLive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Gmail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EmailAcademy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Msn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Steam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Skype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ModificationDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EmailPartnairs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Lng: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FlightNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Biography: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Comments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "Address1"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress1:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "Address2"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddress2:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setAddressComments(Ljava/lang/String;)V
    .locals 0
    .param p1, "AddressComments"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAddressComments:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "Avatar"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileAvatar:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setBiography(Ljava/lang/String;)V
    .locals 0
    .param p1, "Biography"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBiography:Ljava/lang/String;

    .line 673
    return-void
.end method

.method public setBirthDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "BirthDate"    # Ljava/util/Date;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileBirthDate:Ljava/util/Date;

    .line 393
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "City"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCity:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setCivility(I)V
    .locals 0
    .param p1, "Civility"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCivility:I

    .line 363
    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0
    .param p1, "Comments"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileComments:Ljava/lang/String;

    .line 683
    return-void
.end method

.method public setCountry(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)V
    .locals 0
    .param p1, "Country"    # Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 473
    return-void
.end method

.method public setEmailAcademy(Z)V
    .locals 0
    .param p1, "EmailAcademy"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailAcademy:Z

    .line 573
    return-void
.end method

.method public setEmailPartnairs(Z)V
    .locals 0
    .param p1, "EmailPartnairs"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileEmailPartnairs:Z

    .line 623
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "Facebook"    # Ljava/lang/String;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFacebook:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "FirstName"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFirstName:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setFlightNumber(I)V
    .locals 0
    .param p1, "FlightNumber"    # I

    .prologue
    .line 662
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileFlightNumber:I

    .line 663
    return-void
.end method

.method public setGmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "Gmail"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGmail:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setGooglePlus(Ljava/lang/String;)V
    .locals 0
    .param p1, "GooglePlus"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileGooglePlus:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "Id"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileId:I

    .line 323
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "LastName"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLastName:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .param p1, "Lat"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLat:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0
    .param p1, "Lng"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileLng:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "Mobile"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMobile:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "ModificationDate"    # Ljava/util/Date;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileModificationDate:Ljava/util/Date;

    .line 613
    return-void
.end method

.method public setMsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "Msn"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileMsn:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "Phone"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePhone:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "PostalCode"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePostalCode:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setPsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "Psn"    # Ljava/lang/String;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profilePsn:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public setRunVisibility(Z)V
    .locals 0
    .param p1, "RunVisibility"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileRunVisibility:Z

    .line 483
    return-void
.end method

.method public setSkype(Ljava/lang/String;)V
    .locals 0
    .param p1, "Skype"    # Ljava/lang/String;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSkype:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "Status"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileStatus:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setSteam(Ljava/lang/String;)V
    .locals 0
    .param p1, "Steam"    # Ljava/lang/String;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileSteam:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "Tags"    # Ljava/lang/String;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTags:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "Twitter"    # Ljava/lang/String;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileTwitter:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setUser(Lcom/parrot/arsdk/aracademy/ARAcademyUser;)V
    .locals 0
    .param p1, "User"    # Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .line 333
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1, "Website"    # Ljava/lang/String;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileWebsite:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public setXboxLive(Ljava/lang/String;)V
    .locals 0
    .param p1, "XboxLive"    # Ljava/lang/String;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileXboxLive:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .locals 0
    .param p1, "Youtube"    # Ljava/lang/String;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->profileYoutube:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyProfile{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
