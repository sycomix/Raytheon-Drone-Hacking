.class public Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
.super Ljava/lang/Object;
.source "ARAcademyAnonymousProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_ANONYMOUSPROFILE_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_ANONYMOUSPROFILE_EMAIL_ACADEMY:Ljava/lang/String; = "email_academy"

.field private static final ARACADEMY_ANONYMOUSPROFILE_ERRORS:Ljava/lang/String; = "errors"

.field private static final ARACADEMY_ANONYMOUSPROFILE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_ANONYMOUSPROFILE_PASSWORD:Ljava/lang/String; = "password"

.field private static final ARACADEMY_ANONYMOUSPROFILE_TAG:Ljava/lang/String; = "ARAcademyAnonymousProfile"

.field private static final ARACADEMY_ANONYMOUSPROFILE_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected anonymousProfileEmail:Ljava/lang/String;

.field protected anonymousProfileEmailAcademy:Z

.field protected anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

.field protected anonymousProfilePassword:Ljava/lang/String;

.field protected anonymousProfileUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    .line 46
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    .line 60
    :cond_0
    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    .line 65
    :cond_1
    const-string v0, "password"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    .line 70
    :cond_2
    const-string v0, "email_academy"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "email_academy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    .line 75
    :cond_3
    const-string v0, "errors"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    const-string v1, "errors"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .line 80
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
    .line 134
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    .prologue
    .line 275
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 280
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "username"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v2, "password"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v2, "email_academy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmailAcademy()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 288
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 290
    const-string v2, "errors"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :goto_0
    return-object v1

    .line 294
    :cond_0
    const-string v2, "errors"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    .prologue
    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 229
    :cond_0
    const-string/jumbo v2, "username"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 234
    :cond_2
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 239
    :cond_4
    const-string v2, "password"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmailAcademy()Z

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmailAcademy()Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 244
    :cond_6
    const-string v2, "email_academy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmailAcademy()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 247
    :cond_7
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 250
    :cond_9
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 252
    const-string v2, "errors"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_a
    :goto_0
    return-object v1

    .line 256
    :cond_b
    const-string v2, "errors"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 149
    const/4 v2, 0x0

    .line 153
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    move-object v2, v0

    .line 154
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    .line 157
    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    iput-boolean v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    .line 159
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 174
    const/4 v0, 0x1

    .line 176
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    if-nez v2, :cond_2

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 211
    :cond_1
    :goto_0
    return v0

    .line 180
    :cond_2
    if-ne p1, p0, :cond_3

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 187
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    .line 188
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 190
    const/4 v0, 0x0

    .line 192
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 198
    const/4 v0, 0x0

    .line 200
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getEmailAcademy()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    if-eq v2, v3, :cond_7

    .line 202
    const/4 v0, 0x0

    .line 204
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 205
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    if-eqz v2, :cond_1

    .line 207
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAcademy()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    return v0
.end method

.method public getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EmailAcademy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Errors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "Email"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmail:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setEmailAcademy(Z)V
    .locals 0
    .param p1, "EmailAcademy"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileEmailAcademy:Z

    .line 120
    return-void
.end method

.method public setErrors(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)V
    .locals 0
    .param p1, "Errors"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .line 130
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "Password"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfilePassword:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "Username"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->anonymousProfileUsername:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyAnonymousProfile{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->membersToString()Ljava/lang/String;

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
