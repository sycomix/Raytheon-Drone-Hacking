.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
.super Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;
.source "ARAcademyRunsClusterMediasInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNSCLUSTERMEDIASINFO_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNSCLUSTERMEDIASINFO_TAG:Ljava/lang/String; = "ARAcademyRunsClusterMediasInfo"

.field private static final ARACADEMY_RUNSCLUSTERMEDIASINFO_URL:Ljava/lang/String; = "url"


# instance fields
.field protected runsClusterMediasInfoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    .line 39
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
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;-><init>(Lorg/json/JSONObject;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    .line 49
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    .line 54
    :cond_0
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
    .line 68
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;)Lorg/json/JSONObject;

    move-result-object v1

    .line 154
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;)Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 131
    :cond_0
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    invoke-super {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 86
    .restart local v0    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 95
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-nez v2, :cond_2

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 113
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    if-ne p1, p0, :cond_3

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 106
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 107
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->runsClusterMediasInfoUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunsClusterMediasInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
