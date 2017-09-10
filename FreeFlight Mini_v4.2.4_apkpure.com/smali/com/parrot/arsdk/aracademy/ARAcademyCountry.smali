.class public Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
.super Ljava/lang/Object;
.source "ARAcademyCountry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_COUNTRY_ISO:Ljava/lang/String; = "iso"

.field private static final ARACADEMY_COUNTRY_ISO3:Ljava/lang/String; = "iso3"

.field private static final ARACADEMY_COUNTRY_LEVEL:Ljava/lang/String; = "level"

.field private static final ARACADEMY_COUNTRY_NAME:Ljava/lang/String; = "name"

.field private static final ARACADEMY_COUNTRY_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_COUNTRY_NUMCODE:Ljava/lang/String; = "numcode"

.field private static final ARACADEMY_COUNTRY_PRINTABLE_NAME:Ljava/lang/String; = "printable_name"

.field private static final ARACADEMY_COUNTRY_TAG:Ljava/lang/String; = "ARAcademyCountry"


# instance fields
.field protected countryIso:Ljava/lang/String;

.field protected countryIso3:Ljava/lang/String;

.field protected countryLevel:I

.field protected countryName:Ljava/lang/String;

.field protected countryNumcode:I

.field protected countryPrintableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    .line 48
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    .line 57
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 62
    :cond_0
    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    .line 67
    :cond_1
    const-string v0, "printable_name"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "printable_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 72
    :cond_2
    const-string v0, "numcode"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    const-string v0, "numcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    .line 77
    :cond_3
    const-string v0, "iso3"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    const-string v0, "iso3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 82
    :cond_4
    const-string v0, "iso"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    const-string v0, "iso"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    .line 87
    :cond_5
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
    .line 151
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .prologue
    .line 289
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v2, "level"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v2, "printable_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v2, "numcode"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getNumcode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v2, "iso3"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v2, "iso"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .prologue
    .line 239
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 246
    :cond_0
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getLevel()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 251
    :cond_2
    const-string v2, "level"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 256
    :cond_4
    const-string v2, "printable_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getNumcode()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getNumcode()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 261
    :cond_6
    const-string v2, "numcode"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getNumcode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso3()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_9

    .line 266
    :cond_8
    const-string v2, "iso3"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    .line 271
    :cond_a
    const-string v2, "iso"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_b
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 170
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-object v2, v0

    .line 171
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 172
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    .line 173
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 174
    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    iput v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    .line 175
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 176
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-object v2

    .line 178
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 188
    const/4 v0, 0x1

    .line 190
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    if-nez v2, :cond_2

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 228
    :cond_1
    :goto_0
    return v0

    .line 194
    :cond_2
    if-ne p1, p0, :cond_3

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 201
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 202
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 204
    const/4 v0, 0x0

    .line 206
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getLevel()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    if-eq v2, v3, :cond_5

    .line 208
    const/4 v0, 0x0

    .line 210
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 212
    const/4 v0, 0x0

    .line 214
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getNumcode()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    if-eq v2, v3, :cond_7

    .line 216
    const/4 v0, 0x0

    .line 218
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso3()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    .line 220
    const/4 v0, 0x0

    .line 222
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getIso()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getIso3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumcode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    return v0
.end method

.method public getPrintableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PrintableName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Numcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Iso3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Iso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIso(Ljava/lang/String;)V
    .locals 0
    .param p1, "Iso"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setIso3(Ljava/lang/String;)V
    .locals 0
    .param p1, "Iso3"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "Level"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryLevel:I

    .line 107
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setNumcode(I)V
    .locals 0
    .param p1, "Numcode"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryNumcode:I

    .line 127
    return-void
.end method

.method public setPrintableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "PrintableName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyCountry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->membersToString()Ljava/lang/String;

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
