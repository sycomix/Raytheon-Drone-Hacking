.class public Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
.super Ljava/lang/Object;
.source "ARAcademyPilotDetails.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_PILOTDETAILS_AVATAR:Ljava/lang/String; = "avatar"

.field private static final ARACADEMY_PILOTDETAILS_BIOGRAPHY:Ljava/lang/String; = "biography"

.field private static final ARACADEMY_PILOTDETAILS_FACEBOOK:Ljava/lang/String; = "facebook"

.field private static final ARACADEMY_PILOTDETAILS_GMAIL:Ljava/lang/String; = "gmail"

.field private static final ARACADEMY_PILOTDETAILS_GOOGLE_PLUS:Ljava/lang/String; = "google_plus"

.field private static final ARACADEMY_PILOTDETAILS_MSN:Ljava/lang/String; = "msn"

.field private static final ARACADEMY_PILOTDETAILS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PILOTDETAILS_PSN:Ljava/lang/String; = "psn"

.field private static final ARACADEMY_PILOTDETAILS_SKYPE:Ljava/lang/String; = "skype"

.field private static final ARACADEMY_PILOTDETAILS_STATUS:Ljava/lang/String; = "status"

.field private static final ARACADEMY_PILOTDETAILS_STEAM:Ljava/lang/String; = "steam"

.field private static final ARACADEMY_PILOTDETAILS_TAG:Ljava/lang/String; = "ARAcademyPilotDetails"

.field private static final ARACADEMY_PILOTDETAILS_TWITTER:Ljava/lang/String; = "twitter"

.field private static final ARACADEMY_PILOTDETAILS_WEBSITE:Ljava/lang/String; = "website"

.field private static final ARACADEMY_PILOTDETAILS_XBOX_LIVE:Ljava/lang/String; = "xbox_live"

.field private static final ARACADEMY_PILOTDETAILS_YOUTUBE:Ljava/lang/String; = "youtube"


# instance fields
.field protected pilotDetailsAvatar:Ljava/lang/String;

.field protected pilotDetailsBiography:Ljava/lang/String;

.field protected pilotDetailsFacebook:Ljava/lang/String;

.field protected pilotDetailsGmail:Ljava/lang/String;

.field protected pilotDetailsGooglePlus:Ljava/lang/String;

.field protected pilotDetailsMsn:Ljava/lang/String;

.field protected pilotDetailsPsn:Ljava/lang/String;

.field protected pilotDetailsSkype:Ljava/lang/String;

.field protected pilotDetailsStatus:Ljava/lang/String;

.field protected pilotDetailsSteam:Ljava/lang/String;

.field protected pilotDetailsTwitter:Ljava/lang/String;

.field protected pilotDetailsWebsite:Ljava/lang/String;

.field protected pilotDetailsXboxLive:Ljava/lang/String;

.field protected pilotDetailsYoutube:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "website"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "website"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 78
    :cond_0
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 83
    :cond_1
    const-string v0, "psn"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "psn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 88
    :cond_2
    const-string/jumbo v0, "xbox_live"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    const-string/jumbo v0, "xbox_live"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 93
    :cond_3
    const-string/jumbo v0, "twitter"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    const-string/jumbo v0, "twitter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 98
    :cond_4
    const-string v0, "google_plus"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    const-string v0, "google_plus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 103
    :cond_5
    const-string/jumbo v0, "youtube"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    const-string/jumbo v0, "youtube"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 108
    :cond_6
    const-string v0, "msn"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    const-string v0, "msn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 113
    :cond_7
    const-string v0, "facebook"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    const-string v0, "facebook"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 118
    :cond_8
    const-string v0, "skype"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    const-string v0, "skype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 123
    :cond_9
    const-string v0, "gmail"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    const-string v0, "gmail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 128
    :cond_a
    const-string v0, "steam"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    const-string v0, "steam"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 133
    :cond_b
    const-string v0, "biography"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 135
    const-string v0, "biography"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 138
    :cond_c
    const-string v0, "avatar"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    const-string v0, "avatar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    .line 143
    :cond_d
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
    .line 287
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .prologue
    .line 505
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 510
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "website"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v2, "psn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v2, "xbox_live"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v2, "twitter"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v2, "google_plus"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string/jumbo v2, "youtube"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v2, "msn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getMsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v2, "facebook"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string v2, "skype"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSkype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    const-string v2, "gmail"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v2, "steam"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v2, "biography"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v2, "avatar"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-object v1

    .line 539
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .prologue
    .line 415
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 420
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 422
    :cond_0
    const-string/jumbo v2, "website"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 427
    :cond_2
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 432
    :cond_4
    const-string v2, "psn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 437
    :cond_6
    const-string/jumbo v2, "xbox_live"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_9

    .line 442
    :cond_8
    const-string/jumbo v2, "twitter"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    .line 447
    :cond_a
    const-string v2, "google_plus"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_d

    .line 452
    :cond_c
    const-string/jumbo v2, "youtube"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getMsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getMsn()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_f

    .line 457
    :cond_e
    const-string v2, "msn"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getMsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_11

    .line 462
    :cond_10
    const-string v2, "facebook"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSkype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSkype()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 467
    :cond_12
    const-string v2, "skype"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSkype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGmail()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_15

    .line 472
    :cond_14
    const-string v2, "gmail"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    :cond_15
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_17

    .line 477
    :cond_16
    const-string v2, "steam"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    :cond_17
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getBiography()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getBiography()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_19

    .line 482
    :cond_18
    const-string v2, "biography"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_19
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1b

    .line 487
    :cond_1a
    const-string v2, "avatar"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_1b
    :goto_0
    return-object v1

    .line 491
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 306
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-object v2, v0

    .line 307
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 308
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 309
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 311
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 313
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 314
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 315
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 316
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 318
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 319
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 320
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-object v2

    .line 322
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 334
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    if-nez v2, :cond_2

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 404
    :cond_1
    :goto_0
    return v0

    .line 338
    :cond_2
    if-ne p1, p0, :cond_3

    .line 340
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 345
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .line 346
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 348
    const/4 v0, 0x0

    .line 350
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getStatus()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 352
    const/4 v0, 0x0

    .line 354
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 356
    const/4 v0, 0x0

    .line 358
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    .line 360
    const/4 v0, 0x0

    .line 362
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    .line 364
    const/4 v0, 0x0

    .line 366
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    .line 368
    const/4 v0, 0x0

    .line 370
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    .line 372
    const/4 v0, 0x0

    .line 374
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getMsn()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    .line 376
    const/4 v0, 0x0

    .line 378
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    .line 380
    const/4 v0, 0x0

    .line 382
    :cond_c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSkype()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    if-eq v2, v3, :cond_d

    .line 384
    const/4 v0, 0x0

    .line 386
    :cond_d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    if-eq v2, v3, :cond_e

    .line 388
    const/4 v0, 0x0

    .line 390
    :cond_e
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    if-eq v2, v3, :cond_f

    .line 392
    const/4 v0, 0x0

    .line 394
    :cond_f
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getBiography()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    if-eq v2, v3, :cond_10

    .line 396
    const/4 v0, 0x0

    .line 398
    :cond_10
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getAvatar()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 400
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    return-object v0
.end method

.method public getGmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    return-object v0
.end method

.method public getMsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    return-object v0
.end method

.method public getPsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    return-object v0
.end method

.method public getSkype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSteam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public getXboxLive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    return-object v0
.end method

.method public getYoutube()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Website: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Psn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", XboxLive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Twitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GooglePlus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Youtube: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Msn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Facebook: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Skype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Gmail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Steam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Biography: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Avatar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "Avatar"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setBiography(Ljava/lang/String;)V
    .locals 0
    .param p1, "Biography"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "Facebook"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setGmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "Gmail"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setGooglePlus(Ljava/lang/String;)V
    .locals 0
    .param p1, "GooglePlus"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setMsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "Msn"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setPsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "Psn"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setSkype(Ljava/lang/String;)V
    .locals 0
    .param p1, "Skype"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "Status"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setSteam(Ljava/lang/String;)V
    .locals 0
    .param p1, "Steam"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "Twitter"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1, "Website"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setXboxLive(Ljava/lang/String;)V
    .locals 0
    .param p1, "XboxLive"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .locals 0
    .param p1, "Youtube"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyPilotDetails{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->membersToString()Ljava/lang/String;

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
