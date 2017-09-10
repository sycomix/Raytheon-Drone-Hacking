.class public Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;
.super Ljava/lang/Object;
.source "ARAcademyAccountStatistics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_ACCOUNTSTATISTICS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_ACCOUNTSTATISTICS_STATISTICS:Ljava/lang/String; = "statistics"

.field private static final ARACADEMY_ACCOUNTSTATISTICS_TAG:Ljava/lang/String; = "ARAcademyAccountStatistics"


# instance fields
.field protected accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "statistics"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    const-string v1, "statistics"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .line 52
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
    .line 66
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;

    .prologue
    .line 167
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 174
    const-string v2, "statistics"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :goto_0
    return-object v1

    .line 178
    :cond_0
    const-string v2, "statistics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;

    .prologue
    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 144
    const-string v2, "statistics"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_2
    :goto_0
    return-object v1

    .line 148
    :cond_3
    const-string v2, "statistics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 85
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;

    move-object v2, v0

    .line 87
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 104
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;

    if-nez v2, :cond_2

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 123
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    if-ne p1, p0, :cond_3

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 115
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;

    .line 116
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    if-eqz v2, :cond_1

    .line 119
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statistics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setStatistics(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)V
    .locals 0
    .param p1, "Statistics"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->accountStatisticsStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyAccountStatistics{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAccountStatistics;->membersToString()Ljava/lang/String;

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
