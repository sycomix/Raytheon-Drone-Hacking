.class public Lcom/google/gdata/wireformats/ContentValidationException;
.super Lcom/google/gdata/util/ServiceException;
.source "ContentValidationException.java"


# instance fields
.field protected vc:Lcom/google/gdata/model/ValidationContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/model/ValidationContext;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/google/gdata/wireformats/ContentValidationException;->vc:Lcom/google/gdata/model/ValidationContext;

    .line 40
    sget-object v0, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p2}, Lcom/google/gdata/model/ValidationContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/wireformats/ContentValidationException;->setResponse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/gdata/model/ValidationContext;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/gdata/wireformats/ContentValidationException;->vc:Lcom/google/gdata/model/ValidationContext;

    return-object v0
.end method

.method public toParseException()Lcom/google/gdata/util/ParseException;
    .locals 11

    .prologue
    .line 52
    const/4 v9, 0x0

    .line 53
    .local v9, "result":Lcom/google/gdata/util/ParseException;
    iget-object v10, p0, Lcom/google/gdata/wireformats/ContentValidationException;->vc:Lcom/google/gdata/model/ValidationContext;

    invoke-virtual {v10}, Lcom/google/gdata/model/ValidationContext;->getErrors()Ljava/util/Map;

    move-result-object v4

    .line 54
    .local v4, "errors":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/Element;Ljava/util/List<Lcom/google/gdata/util/ErrorContent;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Element;Ljava/util/List<Lcom/google/gdata/util/ErrorContent;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 56
    .local v1, "element":Lcom/google/gdata/model/Element;
    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gdata/model/QName;->toString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "location":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/ErrorContent;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/util/ErrorContent;

    .line 59
    .local v3, "errorCode":Lcom/google/gdata/util/ErrorContent;
    new-instance v8, Lcom/google/gdata/util/ParseException;

    invoke-direct {v8, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 60
    .local v8, "pe":Lcom/google/gdata/util/ParseException;
    invoke-virtual {v8, v7}, Lcom/google/gdata/util/ParseException;->setLocation(Ljava/lang/String;)V

    .line 61
    if-nez v9, :cond_1

    .line 62
    move-object v9, v8

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v9, v8}, Lcom/google/gdata/util/ParseException;->addSibling(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/util/ServiceException;

    goto :goto_0

    .line 69
    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/ErrorContent;>;"
    .end local v1    # "element":Lcom/google/gdata/model/Element;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Element;Ljava/util/List<Lcom/google/gdata/util/ErrorContent;>;>;"
    .end local v3    # "errorCode":Lcom/google/gdata/util/ErrorContent;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_2
    return-object v9
.end method
