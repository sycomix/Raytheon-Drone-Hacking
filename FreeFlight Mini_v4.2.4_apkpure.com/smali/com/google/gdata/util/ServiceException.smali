.class public Lcom/google/gdata/util/ServiceException;
.super Ljava/lang/Exception;
.source "ServiceException.java"


# instance fields
.field errorElement:Lcom/google/gdata/util/ErrorElement;

.field httpErrorCodeOverride:I

.field httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field responseBody:Ljava/lang/String;

.field responseContentType:Lcom/google/gdata/util/ContentType;

.field siblings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ServiceException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 136
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getInternalReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/google/gdata/util/ErrorElement;

    invoke-direct {v0, p1}, Lcom/google/gdata/util/ErrorElement;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    iput-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/google/gdata/util/ServiceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/gdata/util/ServiceException;->nullsafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    .line 72
    new-instance v0, Lcom/google/gdata/util/ErrorElement;

    invoke-direct {v0}, Lcom/google/gdata/util/ErrorElement;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/google/gdata/util/ServiceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/ServiceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/util/ServiceException;->nullsafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    .line 72
    new-instance v2, Lcom/google/gdata/util/ErrorElement;

    invoke-direct {v2}, Lcom/google/gdata/util/ErrorElement;-><init>()V

    iput-object v2, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    .line 80
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/ServiceExceptionInitializer;-><init>(Lcom/google/gdata/util/ServiceException;)V

    .line 119
    .local v0, "initializer":Lcom/google/gdata/util/ServiceExceptionInitializer;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ServiceExceptionInitializer;->parse(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 122
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v2, Lcom/google/gdata/util/ErrorElement;

    invoke-direct {v2}, Lcom/google/gdata/util/ErrorElement;-><init>()V

    iput-object v2, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    .line 123
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 124
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    iput-object v2, p0, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    goto :goto_0
.end method

.method private addXmlError(Lcom/google/gdata/util/ServiceException;Ljava/lang/StringBuilder;Z)V
    .locals 9
    .param p1, "se"    # Lcom/google/gdata/util/ServiceException;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "includeDebugInfo"    # Z

    .prologue
    .line 262
    const-string v8, "<error>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getDomainName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "domainName":Ljava/lang/String;
    const-string v8, "<domain>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {p0, v2}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v8, "</domain>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getCodeName()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "codeName":Ljava/lang/String;
    const-string v8, "<code>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v8, "</code>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "location":Ljava/lang/String;
    invoke-direct {p1}, Lcom/google/gdata/util/ServiceException;->getLocationTypeWithDefault()Lcom/google/gdata/util/ErrorContent$LocationType;

    move-result-object v6

    .line 276
    .local v6, "locationType":Lcom/google/gdata/util/ErrorContent$LocationType;
    if-eqz v5, :cond_0

    .line 277
    const-string v8, "<location type=\'"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v6}, Lcom/google/gdata/util/ErrorContent$LocationType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v8, "\'>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {p0, v5}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v8, "</location>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getInternalReason()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "internalReason":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 286
    const-string v8, "<internalReason>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-direct {p0, v4}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v8, "</internalReason>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getExtendedHelp()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "extendedHelp":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 293
    const-string v8, "<extendedHelp>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-direct {p0, v3}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v8, "</extendedHelp>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getSendReport()Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "sendReport":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 300
    const-string v8, "<sendReport>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-direct {p0, v7}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v8, "</sendReport>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_3
    if-eqz p3, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getDebugInfo()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "debugInfo":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 308
    const-string v8, "<debugInfo>"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {p0, v1}, Lcom/google/gdata/util/ServiceException;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v8, "</debugInfo>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .end local v1    # "debugInfo":Ljava/lang/String;
    :cond_4
    const-string v8, "</error>\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    return-void
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->xmlEscaper()Lcom/google/gdata/util/common/base/CharEscaper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocationTypeWithDefault()Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getLocationType()Lcom/google/gdata/util/ErrorContent$LocationType;

    move-result-object v0

    .line 420
    .local v0, "type":Lcom/google/gdata/util/ErrorContent$LocationType;
    if-eqz v0, :cond_0

    .end local v0    # "type":Lcom/google/gdata/util/ErrorContent$LocationType;
    :goto_0
    return-object v0

    .restart local v0    # "type":Lcom/google/gdata/util/ErrorContent$LocationType;
    :cond_0
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->OTHER:Lcom/google/gdata/util/ErrorContent$LocationType;

    goto :goto_0
.end method

.method private static nullsafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p0, :cond_0

    .end local p0    # "src":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "src":Ljava/lang/String;
    :cond_0
    const-string p0, "Exception message unavailable"

    goto :goto_0
.end method


# virtual methods
.method public addSibling(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/util/ServiceException;
    .locals 4
    .param p1, "newbie"    # Lcom/google/gdata/util/ServiceException;

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null exception being added"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_0
    iget-object v2, p1, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/ServiceException;

    .line 553
    .local v1, "newbieSibling":Lcom/google/gdata/util/ServiceException;
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 554
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    iput-object v2, v1, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    goto :goto_0

    .line 558
    .end local v1    # "newbieSibling":Lcom/google/gdata/util/ServiceException;
    :cond_2
    return-object p0
.end method

.method public getCodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v1}, Lcom/google/gdata/util/ErrorElement;->getCodeName()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "codeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "codeName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "codeName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0}, Lcom/google/gdata/util/ErrorElement;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v1}, Lcom/google/gdata/util/ErrorElement;->getDomainName()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "domainName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "domainName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "domainName":Ljava/lang/String;
    :cond_0
    const-string v0, "GData"

    goto :goto_0
.end method

.method public getExtendedHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0}, Lcom/google/gdata/util/ErrorElement;->getExtendedHelp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpErrorCodeOverride()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    return v0
.end method

.method public getHttpHeader(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 340
    :goto_0
    return-object v2

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    .line 340
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getInternalReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v1}, Lcom/google/gdata/util/ErrorElement;->getInternalReason()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "internalReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "internalReason":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "internalReason":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0}, Lcom/google/gdata/util/ErrorElement;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationType()Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0}, Lcom/google/gdata/util/ErrorElement;->getLocationType()Lcom/google/gdata/util/ErrorContent$LocationType;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getInternalReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthProxyResponse()Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;
    .locals 2

    .prologue
    .line 606
    new-instance v0, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getSendReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0}, Lcom/google/gdata/util/ErrorElement;->getSendReport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSiblings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ServiceException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasOAuthProxyResponse()Z
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    const-string/jumbo v1, "x_oauth_approval_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    const-string/jumbo v1, "x_oauth_state"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    const-string/jumbo v1, "x_oauth_error"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    const-string/jumbo v1, "x_oauth_error"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    invoke-super {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    instance-of v0, p1, Lcom/google/gdata/util/ServiceException;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lcom/google/gdata/util/ServiceException;

    .end local p1    # "cause":Ljava/lang/Throwable;
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/ServiceException;->addSibling(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/util/ServiceException;

    .line 165
    :cond_0
    return-object p0
.end method

.method public matches(Lcom/google/gdata/util/ErrorContent;)Z
    .locals 2
    .param p1, "code"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getCodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getCodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesAny(Lcom/google/gdata/util/ErrorContent;)Z
    .locals 3
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 579
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/ServiceException;

    .line 580
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-virtual {v1, p1}, Lcom/google/gdata/util/ServiceException;->matches(Lcom/google/gdata/util/ErrorContent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const/4 v2, 0x1

    .line 584
    .end local v1    # "se":Lcom/google/gdata/util/ServiceException;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setCode(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 399
    return-void
.end method

.method public setDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "debugInfo"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setDebugInfo(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 526
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setDomain(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 380
    return-void
.end method

.method public setExtendedHelp(Ljava/lang/String;)V
    .locals 1
    .param p1, "extendedHelp"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setExtendedHelp(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 493
    return-void
.end method

.method public setHeaderLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setHeaderLocation(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 441
    return-void
.end method

.method public setHttpErrorCodeOverride(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    return-void
.end method

.method public setInternalReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "internalReason"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 477
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setLocation(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 450
    return-void
.end method

.method public setResponse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null content type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null response body"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iput-object p1, p0, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    .line 225
    invoke-virtual {p0, p2}, Lcom/google/gdata/util/ServiceException;->setResponseBody(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 4
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null response body"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/ServiceExceptionInitializer;-><init>(Lcom/google/gdata/util/ServiceException;)V

    .line 206
    .local v0, "initializer":Lcom/google/gdata/util/ServiceExceptionInitializer;
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    iget-object v3, p0, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/gdata/util/ServiceExceptionInitializer;->parse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/google/gdata/util/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setResponseContentType(Lcom/google/gdata/util/ContentType;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null content type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    .line 187
    return-void
.end method

.method public setSendReport(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendReport"    # Ljava/lang/String;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setSendReport(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 509
    return-void
.end method

.method public setXpathLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/ErrorElement;->setXpathLocation(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 432
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 353
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    iget-object v1, p0, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXmlErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/ServiceException;->toXmlErrorMessage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXmlErrorMessage(Z)Ljava/lang/String;
    .locals 4
    .param p1, "includeDebugInfo"    # Z

    .prologue
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "<errors xmlns=\'http://schemas.google.com/g/2005\'>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v3, p0, Lcom/google/gdata/util/ServiceException;->siblings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/ServiceException;

    .line 249
    .local v2, "sibling":Lcom/google/gdata/util/ServiceException;
    invoke-direct {p0, v2, v1, p1}, Lcom/google/gdata/util/ServiceException;->addXmlError(Lcom/google/gdata/util/ServiceException;Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    .line 251
    .end local v2    # "sibling":Lcom/google/gdata/util/ServiceException;
    :cond_0
    const-string v3, "</errors>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
