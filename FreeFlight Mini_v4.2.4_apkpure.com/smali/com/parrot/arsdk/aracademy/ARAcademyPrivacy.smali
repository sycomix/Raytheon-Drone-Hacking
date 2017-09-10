.class public Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
.super Ljava/lang/Object;
.source "ARAcademyPrivacy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_PRIVACY_ADDRESS:Ljava/lang/String; = "address"

.field private static final ARACADEMY_PRIVACY_CITY:Ljava/lang/String; = "city"

.field private static final ARACADEMY_PRIVACY_CIVILITY:Ljava/lang/String; = "civility"

.field private static final ARACADEMY_PRIVACY_CONTACT:Ljava/lang/String; = "contact"

.field private static final ARACADEMY_PRIVACY_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_PRIVACY_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PRIVACY_TAG:Ljava/lang/String; = "ARAcademyPrivacy"


# instance fields
.field protected privacyAddress:I

.field protected privacyCity:I

.field protected privacyCivility:I

.field protected privacyContact:I

.field protected privacyEmail:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "city"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    .line 60
    :cond_0
    const-string v0, "civility"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "civility"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    .line 65
    :cond_1
    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    .line 70
    :cond_2
    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const-string v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    .line 75
    :cond_3
    const-string v0, "contact"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-string v0, "contact"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I

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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    .prologue
    .line 262
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "city"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string v2, "civility"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCivility()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getEmail()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    const-string v2, "address"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getAddress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    const-string v2, "contact"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getContact()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    .prologue
    .line 217
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCity()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCity()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 224
    :cond_0
    const-string v2, "city"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCivility()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCivility()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 229
    :cond_2
    const-string v2, "civility"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCivility()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getEmail()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getEmail()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 234
    :cond_4
    const-string v2, "email"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getEmail()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getAddress()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getAddress()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 239
    :cond_6
    const-string v2, "address"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getAddress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getContact()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getContact()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 244
    :cond_8
    const-string v2, "contact"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getContact()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_9
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 250
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
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    move-object v2, v0

    .line 154
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    .line 155
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    .line 156
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    .line 157
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    .line 158
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 170
    const/4 v0, 0x1

    .line 172
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    if-nez v2, :cond_2

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 206
    :cond_1
    :goto_0
    return v0

    .line 176
    :cond_2
    if-ne p1, p0, :cond_3

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 183
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;

    .line 184
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCity()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    if-eq v2, v3, :cond_4

    .line 186
    const/4 v0, 0x0

    .line 188
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getCivility()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    if-eq v2, v3, :cond_5

    .line 190
    const/4 v0, 0x0

    .line 192
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getEmail()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    if-eq v2, v3, :cond_6

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getAddress()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    if-eq v2, v3, :cond_7

    .line 198
    const/4 v0, 0x0

    .line 200
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->getContact()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I

    if-eq v2, v3, :cond_1

    .line 202
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    return v0
.end method

.method public getCity()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    return v0
.end method

.method public getCivility()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    return v0
.end method

.method public getContact()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I

    return v0
.end method

.method public getEmail()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "City: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Civility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(I)V
    .locals 0
    .param p1, "Address"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyAddress:I

    .line 120
    return-void
.end method

.method public setCity(I)V
    .locals 0
    .param p1, "City"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCity:I

    .line 90
    return-void
.end method

.method public setCivility(I)V
    .locals 0
    .param p1, "Civility"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyCivility:I

    .line 100
    return-void
.end method

.method public setContact(I)V
    .locals 0
    .param p1, "Contact"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyContact:I

    .line 130
    return-void
.end method

.method public setEmail(I)V
    .locals 0
    .param p1, "Email"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->privacyEmail:I

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyPrivacy{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPrivacy;->membersToString()Ljava/lang/String;

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
