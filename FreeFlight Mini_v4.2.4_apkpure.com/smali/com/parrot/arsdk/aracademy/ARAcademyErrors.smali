.class public Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
.super Ljava/lang/Object;
.source "ARAcademyErrors.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_ERRORS_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_ERRORS_EMAIL_ACADEMY:Ljava/lang/String; = "email_academy"

.field private static final ARACADEMY_ERRORS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_ERRORS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ARACADEMY_ERRORS_TAG:Ljava/lang/String; = "ARAcademyErrors"

.field private static final ARACADEMY_ERRORS_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected errorsEmail:Ljava/lang/String;

.field protected errorsEmailAcademy:Ljava/lang/String;

.field protected errorsPassword:Ljava/lang/String;

.field protected errorsUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    .line 44
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    .line 53
    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 58
    :cond_0
    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string/jumbo v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 63
    :cond_1
    const-string v0, "password"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 68
    :cond_2
    const-string v0, "email_academy"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const-string v0, "email_academy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    .line 73
    :cond_3
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
    .line 117
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .prologue
    .line 235
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v2, "username"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "password"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v2, "email_academy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmailAcademy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .prologue
    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 202
    :cond_0
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 207
    :cond_2
    const-string/jumbo v2, "username"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 212
    :cond_4
    const-string v2, "password"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmailAcademy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmailAcademy()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 217
    :cond_6
    const-string v2, "email_academy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmailAcademy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_7
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 136
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-object v2, v0

    .line 137
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v0, 0x1

    .line 154
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    if-nez v2, :cond_2

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 184
    :cond_1
    :goto_0
    return v0

    .line 158
    :cond_2
    if-ne p1, p0, :cond_3

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 165
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .line 166
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 168
    const/4 v0, 0x0

    .line 170
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 172
    const/4 v0, 0x0

    .line 174
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 176
    const/4 v0, 0x0

    .line 178
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmailAcademy()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAcademy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EmailAcademy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "Email"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setEmailAcademy(Ljava/lang/String;)V
    .locals 0
    .param p1, "EmailAcademy"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "Password"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "Username"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyErrors{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->membersToString()Ljava/lang/String;

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
