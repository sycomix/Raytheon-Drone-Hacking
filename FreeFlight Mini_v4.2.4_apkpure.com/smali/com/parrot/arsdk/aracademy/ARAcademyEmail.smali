.class public Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
.super Ljava/lang/Object;
.source "ARAcademyEmail.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_EMAIL_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_EMAIL_ERRORS:Ljava/lang/String; = "errors"

.field private static final ARACADEMY_EMAIL_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_EMAIL_TAG:Ljava/lang/String; = "ARAcademyEmail"


# instance fields
.field protected emailEmail:Ljava/lang/String;

.field protected emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

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

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    .line 49
    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    .line 54
    :cond_0
    const-string v0, "errors"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    const-string v1, "errors"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    .prologue
    .line 194
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "errors"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :goto_0
    return-object v1

    .line 207
    :cond_0
    const-string v2, "errors"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;Lcom/parrot/arsdk/aracademy/ARAcademyEmail;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    .prologue
    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 163
    :cond_0
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 171
    const-string v2, "errors"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_4
    :goto_0
    return-object v1

    .line 175
    :cond_5
    const-string v2, "errors"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 102
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    move-object v2, v0

    .line 103
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 122
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    if-nez v2, :cond_2

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 145
    :cond_1
    :goto_0
    return v0

    .line 126
    :cond_2
    if-ne p1, p0, :cond_3

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 133
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    .line 134
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 136
    const/4 v0, 0x0

    .line 138
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    if-eqz v2, :cond_1

    .line 141
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Errors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

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
    .line 68
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setErrors(Lcom/parrot/arsdk/aracademy/ARAcademyErrors;)V
    .locals 0
    .param p1, "Errors"    # Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->emailErrors:Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyEmail{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->membersToString()Ljava/lang/String;

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
