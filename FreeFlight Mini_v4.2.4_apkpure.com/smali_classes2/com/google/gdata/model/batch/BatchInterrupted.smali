.class public Lcom/google/gdata/model/batch/BatchInterrupted;
.super Lcom/google/gdata/model/Element;
.source "BatchInterrupted.java"

# interfaces
.implements Lcom/google/gdata/data/batch/IBatchInterrupted;


# static fields
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

.field public static final ERROR_COUNT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
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
            "Lcom/google/gdata/model/batch/BatchInterrupted;",
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

.field public static final SKIPPED_COUNT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUCCESS_COUNT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_COUNT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "interrupted"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/batch/BatchInterrupted;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 47
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "content-type"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/util/ContentType;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    .line 53
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->ERROR_COUNT:Lcom/google/gdata/model/AttributeKey;

    .line 59
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "reason"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->REASON:Lcom/google/gdata/model/AttributeKey;

    .line 65
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "unprocessed"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->SKIPPED_COUNT:Lcom/google/gdata/model/AttributeKey;

    .line 71
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "success"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->SUCCESS_COUNT:Lcom/google/gdata/model/AttributeKey;

    .line 77
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "parsed"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->TOTAL_COUNT:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "totalCount"    # I
    .param p3, "successCount"    # I
    .param p4, "errorCount"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;-><init>()V

    .line 118
    sub-int v0, p3, p4

    if-ge p2, v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total < success + error. total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setReason(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->setTotalCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->setSuccessCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 125
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->setErrorCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 126
    add-int v0, p3, p4

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->setSkippedCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;III)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "totalCount"    # I
    .param p3, "successCount"    # I
    .param p4, "errorCount"    # I

    .prologue
    .line 140
    invoke-static {p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getReasonFromException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/google/gdata/model/batch/BatchInterrupted;-><init>(Ljava/lang/String;III)V

    .line 141
    instance-of v1, p1, Lcom/google/gdata/util/ServiceException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/google/gdata/util/ServiceException;

    .line 143
    .local v0, "se":Lcom/google/gdata/util/ServiceException;
    invoke-virtual {v0}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setContent(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 144
    invoke-virtual {v0}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 146
    .end local v0    # "se":Lcom/google/gdata/util/ServiceException;
    :cond_0
    return-void
.end method

.method private static getReasonFromException(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 407
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 409
    const-string v0, "Unexpected error"

    .line 411
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v3, 0x1

    .line 84
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setContentRequired(Z)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 89
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 90
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->ERROR_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 91
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->TOTAL_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 92
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 93
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->SUCCESS_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 94
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->SKIPPED_COUNT:Lcom/google/gdata/model/AttributeKey;

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

    .line 360
    if-ne p0, p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 363
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 364
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 366
    check-cast v0, Lcom/google/gdata/model/batch/BatchInterrupted;

    .line 367
    .local v0, "other":Lcom/google/gdata/model/batch/BatchInterrupted;
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getErrorCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getErrorCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSkippedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSkippedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSuccessCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSuccessCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getTotalCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getTotalCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/batch/BatchInterrupted;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getErrorCount()I
    .locals 2

    .prologue
    .line 218
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->ERROR_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 219
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSkippedCount()I
    .locals 2

    .prologue
    .line 274
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->SKIPPED_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 275
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSuccessCount()I
    .locals 2

    .prologue
    .line 304
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->SUCCESS_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 305
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getTotalCount()I
    .locals 2

    .prologue
    .line 334
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->TOTAL_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 335
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorCount()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getErrorCount()I

    move-result v0

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
    .line 265
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSkippedCount()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSkippedCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuccessCount()Z
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSuccessCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalCount()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getTotalCount()I

    move-result v0

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
    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 379
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 383
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 385
    :cond_1
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getErrorCount()I

    move-result v2

    add-int v0, v1, v2

    .line 386
    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 387
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 389
    :cond_2
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSkippedCount()I

    move-result v2

    add-int v0, v1, v2

    .line 390
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getSuccessCount()I

    move-result v2

    add-int v0, v1, v2

    .line 391
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getTotalCount()I

    move-result v2

    add-int v0, v1, v2

    .line 392
    return v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 168
    return-object p0
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 3
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 198
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 200
    return-object p0

    .line 198
    :cond_0
    new-instance v0, Lcom/google/gdata/util/ContentType;

    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setErrorCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 1
    .param p1, "errorCount"    # Ljava/lang/Integer;

    .prologue
    .line 229
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->ERROR_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 230
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 256
    return-object p0
.end method

.method public setSkippedCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 1
    .param p1, "skippedCount"    # Ljava/lang/Integer;

    .prologue
    .line 285
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->SKIPPED_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 286
    return-object p0
.end method

.method public setSuccessCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 1
    .param p1, "successCount"    # Ljava/lang/Integer;

    .prologue
    .line 315
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->SUCCESS_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 316
    return-object p0
.end method

.method public setTotalCount(Ljava/lang/Integer;)Lcom/google/gdata/model/batch/BatchInterrupted;
    .locals 1
    .param p1, "totalCount"    # Ljava/lang/Integer;

    .prologue
    .line 345
    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->TOTAL_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/batch/BatchInterrupted;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 346
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{BatchInterrupted content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getTextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->CONTENT_TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->ERROR_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->REASON:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " skippedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->SKIPPED_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->SUCCESS_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->TOTAL_COUNT:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/batch/BatchInterrupted;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
