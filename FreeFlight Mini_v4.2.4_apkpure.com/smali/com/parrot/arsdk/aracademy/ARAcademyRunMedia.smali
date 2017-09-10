.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
.super Ljava/lang/Object;
.source "ARAcademyRunMedia.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNMEDIA_FILENAME:Ljava/lang/String; = "filename"

.field private static final ARACADEMY_RUNMEDIA_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNMEDIA_TAG:Ljava/lang/String; = "ARAcademyRunMedia"

.field private static final ARACADEMY_RUNMEDIA_URL:Ljava/lang/String; = "url"

.field private static final ARACADEMY_RUNMEDIA_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runMediaFilename:Ljava/lang/String;

.field protected runMediaUrl:Ljava/lang/String;

.field protected runMediaVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    .line 42
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 56
    :cond_0
    const-string/jumbo v0, "visible"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    .line 61
    :cond_1
    const-string v0, "filename"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "filename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    .line 66
    :cond_2
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
    .line 100
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;

    .prologue
    .line 208
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "url"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v2, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getVisible()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 217
    const-string v2, "filename"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;

    .prologue
    .line 173
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 180
    :cond_0
    const-string/jumbo v2, "url"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getVisible()Z

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getVisible()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 185
    :cond_2
    const-string/jumbo v2, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getVisible()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 188
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getFilename()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 190
    :cond_4
    const-string v2, "filename"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_5
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 119
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;

    move-object v2, v0

    .line 120
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 121
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    .line 122
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 134
    const/4 v0, 0x1

    .line 136
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;

    if-nez v2, :cond_2

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 162
    :cond_1
    :goto_0
    return v0

    .line 140
    :cond_2
    if-ne p1, p0, :cond_3

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 147
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;

    .line 148
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 150
    const/4 v0, 0x0

    .line 152
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getVisible()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    if-eq v2, v3, :cond_5

    .line 154
    const/4 v0, 0x0

    .line 156
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

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
    .line 95
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaFilename:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaUrl:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "Visible"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->runMediaVisible:Z

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunMedia{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunMedia;->membersToString()Ljava/lang/String;

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
