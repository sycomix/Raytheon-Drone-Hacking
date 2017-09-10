.class public Lcom/google/gdata/model/batch/BatchStatus;
.super Lcom/google/gdata/model/Element;
.source "BatchStatus.java"

# interfaces
.implements Lcom/google/gdata/data/batch/IBatchStatus;


# static fields
.field public static final CODE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/batch/BatchStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "status"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/batch/BatchStatus;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 49
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "code"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchStatus;->CODE:Lcom/google/gdata/model/AttributeKey;

    .line 56
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "content-type"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/util/ContentType;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchStatus;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    .line 62
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "reason"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchStatus;->REASON:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ServiceException;)V
    .locals 2
    .param p1, "e"    # Lcom/google/gdata/util/ServiceException;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/gdata/model/batch/BatchStatus;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getHttpErrorCodeOverride()I

    move-result v0

    .line 111
    .local v0, "code":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    const/16 v0, 0x1f4

    .line 114
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setCode(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 115
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setReason(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 116
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 117
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setContent(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 118
    return-void
.end method

.method public static createCreatedStatus()Lcom/google/gdata/model/batch/BatchStatus;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/gdata/model/batch/BatchStatus;

    invoke-direct {v0}, Lcom/google/gdata/model/batch/BatchStatus;-><init>()V

    .line 90
    .local v0, "status":Lcom/google/gdata/model/batch/BatchStatus;
    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setCode(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 91
    const-string v1, "Created"

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setReason(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 92
    return-object v0
.end method

.method public static createSuccessStatus()Lcom/google/gdata/model/batch/BatchStatus;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/gdata/model/batch/BatchStatus;

    invoke-direct {v0}, Lcom/google/gdata/model/batch/BatchStatus;-><init>()V

    .line 82
    .local v0, "status":Lcom/google/gdata/model/batch/BatchStatus;
    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setCode(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 83
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->setReason(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchStatus;

    .line 84
    return-object v0
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v3, 0x1

    .line 69
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setContentRequired(Z)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 74
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 75
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 76
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    if-ne p0, p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchStatus;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 253
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 255
    check-cast v0, Lcom/google/gdata/model/batch/BatchStatus;

    .line 256
    .local v0, "other":Lcom/google/gdata/model/batch/BatchStatus;
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchStatus;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchStatus;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchStatus;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchStatus;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchStatus;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchStatus;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchStatus;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchStatus;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCode()I
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 127
    .local v0, "code":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchStatus;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchStatus;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchStatus;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 265
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getCode()I

    move-result v2

    add-int v0, v1, v2

    .line 266
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 270
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 273
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 275
    :cond_2
    return v0
.end method

.method public setCode(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchStatus;
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;

    .prologue
    .line 136
    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchStatus;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 137
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchStatus;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchStatus;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 169
    return-object p0
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/model/batch/BatchStatus;
    .locals 3
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 202
    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/batch/BatchStatus;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 204
    return-object p0

    .line 202
    :cond_0
    new-instance v0, Lcom/google/gdata/util/ContentType;

    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchStatus;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 234
    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchStatus;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 235
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BatchStatus code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->CODE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchStatus;->getTextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchStatus;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchStatus;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchStatus;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
