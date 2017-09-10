.class public Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
.super Ljava/lang/Object;
.source "ARAcademyPilot.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_PILOT_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PILOT_PROFILE:Ljava/lang/String; = "profile"

.field private static final ARACADEMY_PILOT_STATISTICS:Ljava/lang/String; = "statistics"

.field private static final ARACADEMY_PILOT_TAG:Ljava/lang/String; = "ARAcademyPilot"


# instance fields
.field protected pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

.field protected pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "profile"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    const-string v1, "profile"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .line 54
    :cond_0
    const-string v0, "statistics"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    const-string v1, "statistics"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .line 59
    :cond_1
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
    .line 83
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .prologue
    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "profile"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "statistics"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :goto_1
    return-object v1

    .line 218
    :cond_0
    const-string v2, "profile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 227
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v2, "statistics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .prologue
    .line 161
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 171
    const-string v2, "profile"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 184
    const-string v2, "statistics"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_5
    :goto_1
    return-object v1

    .line 175
    :cond_6
    const-string v2, "profile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    :try_start_1
    const-string v2, "statistics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 102
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    move-object v2, v0

    .line 104
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 126
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    if-nez v2, :cond_2

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 150
    :cond_1
    :goto_0
    return v0

    .line 130
    :cond_2
    if-ne p1, p0, :cond_3

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 137
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 138
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    if-eqz v2, :cond_6

    .line 141
    :cond_5
    const/4 v0, 0x0

    .line 143
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 144
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    if-eqz v2, :cond_1

    .line 146
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    return-object v0
.end method

.method public getStatistics()Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Statistics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProfile(Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;)V
    .locals 0
    .param p1, "Profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotProfile:Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    .line 69
    return-void
.end method

.method public setStatistics(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)V
    .locals 0
    .param p1, "Statistics"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->pilotStatistics:Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyPilot{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->membersToString()Ljava/lang/String;

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
