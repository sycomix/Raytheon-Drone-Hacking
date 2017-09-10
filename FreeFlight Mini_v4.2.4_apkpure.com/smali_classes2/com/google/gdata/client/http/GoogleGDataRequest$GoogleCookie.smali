.class public Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
.super Ljava/lang/Object;
.source "GoogleGDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/http/GoogleGDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleCookie"
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 13
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookieHeader"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v10, ";"

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "attributes":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "nameValue":Ljava/lang/String;
    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 137
    .local v4, "equals":I
    if-gez v4, :cond_0

    .line 138
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Cookie is not a name/value pair"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 140
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    .line 141
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->value:Ljava/lang/String;

    .line 142
    const-string v10, "/"

    iput-object v10, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    .line 146
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v10, v0

    if-ge v5, v10, :cond_8

    .line 147
    aget-object v10, v0, v5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 148
    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 149
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "value":Ljava/lang/String;
    const-string v10, "domain"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 155
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v10

    if-lez v10, :cond_3

    .line 157
    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 158
    .local v1, "colon":I
    if-lez v1, :cond_3

    .line 159
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 162
    .end local v1    # "colon":I
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "uriDomain":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 164
    iput-object v9, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    .line 171
    :cond_4
    iput-object v9, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_5
    invoke-direct {p0, v8, v9}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->matchDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 167
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Trying to set foreign cookie"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    .end local v8    # "uriDomain":Ljava/lang/String;
    :cond_6
    const-string v10, "path"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 173
    iput-object v9, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_7
    const-string v10, "expires"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 176
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "E, dd-MMM-yyyy k:m:s \'GMT\'"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/text/ParseException;
    :try_start_1
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "E, dd MMM yyyy k:m:s \'GMT\'"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e2":Ljava/text/ParseException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad date format in header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 191
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "e2":Ljava/text/ParseException;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private matchDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "testDomain"    # Ljava/lang/String;
    .param p2, "tailDomain"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 274
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 277
    check-cast v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .line 278
    .local v0, "cookie":Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 282
    iget-object v2, v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 285
    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHeaderValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasExpired()Z
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    .line 224
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 225
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 292
    const/16 v0, 0x11

    .line 293
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 294
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 295
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 296
    return v0

    .line 295
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/net/URI;)Z
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->hasExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "uriDomain":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->matchDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 249
    const-string v0, "/"

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleCookie("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
