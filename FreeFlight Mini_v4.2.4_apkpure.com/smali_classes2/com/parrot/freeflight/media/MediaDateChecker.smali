.class public Lcom/parrot/freeflight/media/MediaDateChecker;
.super Ljava/lang/Object;
.source "MediaDateChecker.java"


# instance fields
.field private final mMediaDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HHmmssZ"

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/MediaDateChecker;->mMediaDateFormat:Ljava/text/SimpleDateFormat;

    .line 21
    return-void
.end method

.method private changeJpgMediaDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newDate"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/armedia/Exif2Interface;

    invoke-direct {v2, p1}, Lcom/parrot/arsdk/armedia/Exif2Interface;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    sget-object v4, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-virtual {v2, v4}, Lcom/parrot/arsdk/armedia/Exif2Interface;->getAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "media_date"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v4, "run_date"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    sget-object v4, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->IMAGE_DESCRIPTION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/parrot/arsdk/armedia/Exif2Interface;->setAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/parrot/arsdk/armedia/Exif2Interface;->saveAttributes()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v0    # "description":Ljava/lang/String;
    .end local v2    # "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private changeMpgMediaDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newDate"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-static {p1}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getPvat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1, p2}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->changePvatDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method private checkChangeMediaDateNeeded(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)Z
    .locals 6
    .param p1, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    :try_start_0
    const-string v2, "2014-01-02T000000+0000"

    .line 54
    .local v2, "mediaRefDate":Ljava/lang/String;
    iget-object v4, p0, Lcom/parrot/freeflight/media/MediaDateChecker;->mMediaDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 55
    .local v1, "mediaDate":Ljava/util/Date;
    iget-object v4, p0, Lcom/parrot/freeflight/media/MediaDateChecker;->mMediaDateFormat:Ljava/text/SimpleDateFormat;

    const-string v5, "2014-01-02T000000+0000"

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 57
    .local v3, "refDate":Ljava/util/Date;
    invoke-virtual {v1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 61
    .end local v1    # "mediaDate":Ljava/util/Date;
    .end local v2    # "mediaRefDate":Ljava/lang/String;
    .end local v3    # "refDate":Ljava/util/Date;
    :goto_0
    return v4

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 61
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeMediaDateIfNeeded(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V
    .locals 6
    .param p1, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/MediaDateChecker;->checkChangeMediaDateNeeded(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/media/MediaDateChecker;->mMediaDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "newDate":Ljava/lang/String;
    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/media/MediaDateChecker;->changeJpgMediaDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "newDate":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v1    # "newDate":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaType;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/media/MediaDateChecker;->changeMpgMediaDate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
