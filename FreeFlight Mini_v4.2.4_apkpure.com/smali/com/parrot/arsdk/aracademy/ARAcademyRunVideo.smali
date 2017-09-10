.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
.super Ljava/lang/Object;
.source "ARAcademyRunVideo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNVIDEO_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ARACADEMY_RUNVIDEO_FILENAME:Ljava/lang/String; = "filename"

.field private static final ARACADEMY_RUNVIDEO_ID:Ljava/lang/String; = "id"

.field private static final ARACADEMY_RUNVIDEO_MODIFICATION_DATE:Ljava/lang/String; = "modification_date"

.field private static final ARACADEMY_RUNVIDEO_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNVIDEO_TAG:Ljava/lang/String; = "ARAcademyRunVideo"

.field private static final ARACADEMY_RUNVIDEO_URL:Ljava/lang/String; = "url"

.field private static final ARACADEMY_RUNVIDEO_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runVideoFilename:Ljava/lang/String;

.field protected runVideoId:I

.field protected runVideoModificationDate:Ljava/util/Date;

.field protected runVideoUrl:Ljava/lang/String;

.field protected runVideoVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    .line 43
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    .line 60
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    .line 65
    :cond_0
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    .line 70
    :cond_1
    const-string/jumbo v2, "visible"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const-string/jumbo v2, "visible"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    .line 75
    :cond_2
    const-string v2, "modification_date"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    const-string v2, "modification_date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "dateString":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    .line 82
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v2, "filename"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    const-string v2, "filename"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    .line 87
    :cond_4
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
    .line 141
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .prologue
    .line 279
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 284
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 286
    const-string/jumbo v4, "url"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string/jumbo v4, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getVisible()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 290
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 292
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "modification_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "filename"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-object v2

    .line 300
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .prologue
    .line 229
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 236
    :cond_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 241
    :cond_2
    const-string/jumbo v4, "url"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getVisible()Z

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getVisible()Z

    move-result v5

    if-eq v4, v5, :cond_5

    .line 246
    :cond_4
    const-string/jumbo v4, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getVisible()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 249
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 251
    :cond_6
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 253
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "modification_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 261
    :cond_8
    const-string v4, "filename"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_9
    :goto_0
    return-object v2

    .line 265
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 160
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    move-object v2, v0

    .line 161
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    .line 162
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    .line 163
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    .line 165
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-object v2

    .line 171
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 181
    const/4 v0, 0x1

    .line 183
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    if-nez v2, :cond_2

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 218
    :cond_1
    :goto_0
    return v0

    .line 187
    :cond_2
    if-ne p1, p0, :cond_3

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 194
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .line 195
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getId()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    if-eq v2, v3, :cond_4

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 201
    const/4 v0, 0x0

    .line 203
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getVisible()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    if-eq v2, v3, :cond_6

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    if-eqz v2, :cond_9

    .line 210
    :cond_8
    const/4 v0, 0x0

    .line 212
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    return v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ModificationDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "Filename"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoFilename:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "Id"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoId:I

    .line 97
    return-void
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "ModificationDate"    # Ljava/util/Date;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoModificationDate:Ljava/util/Date;

    .line 127
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoUrl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "Visible"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->runVideoVisible:Z

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunVideo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->membersToString()Ljava/lang/String;

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
