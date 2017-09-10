.class public Lcom/google/gdata/data/batch/BatchInterrupted;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "BatchInterrupted.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;
.implements Lcom/google/gdata/data/batch/IBatchInterrupted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Lcom/google/gdata/util/ContentType;

.field private errorCount:I

.field private reason:Ljava/lang/String;

.field private successCount:I

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "totalCount"    # I
    .param p3, "successCount"    # I
    .param p4, "errorCount"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->totalCount:I

    .line 68
    iput p3, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->successCount:I

    .line 69
    iput p4, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->errorCount:I

    .line 70
    sub-int v0, p3, p4

    if-ge p2, v0, :cond_0

    .line 71
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

    .line 74
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;III)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "totalCount"    # I
    .param p3, "successCount"    # I
    .param p4, "errorCount"    # I

    .prologue
    .line 97
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchInterrupted;->getReasonFromException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/google/gdata/data/batch/BatchInterrupted;-><init>(Ljava/lang/String;III)V

    .line 98
    instance-of v1, p1, Lcom/google/gdata/util/ServiceException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/google/gdata/util/ServiceException;

    .line 100
    .local v0, "se":Lcom/google/gdata/util/ServiceException;
    invoke-virtual {v0}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->content:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    .line 103
    .end local v0    # "se":Lcom/google/gdata/util/ServiceException;
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/batch/BatchInterrupted;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchInterrupted;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->totalCount:I

    return p1
.end method

.method static synthetic access$100(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lorg/xml/sax/Attributes;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/google/gdata/data/batch/BatchInterrupted;->getIntegerAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/google/gdata/data/batch/BatchInterrupted;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchInterrupted;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->successCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/gdata/data/batch/BatchInterrupted;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchInterrupted;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->errorCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/gdata/data/batch/BatchInterrupted;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchInterrupted;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/gdata/data/batch/BatchInterrupted;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/util/ContentType;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchInterrupted;
    .param p1, "x1"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/gdata/data/batch/BatchInterrupted;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/batch/BatchInterrupted;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->content:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 108
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 109
    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 110
    const-string v1, "interrupted"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 112
    return-object v0
.end method

.method private static getIntegerAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I
    .locals 5
    .param p0, "attrs"    # Lorg/xml/sax/Attributes;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "stringValue":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 236
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .restart local p2    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidIntegerAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 240
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid integer in value of attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 242
    throw v1
.end method

.method private static getReasonFromException(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    const-string v0, "Unexpected error"

    .line 120
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 7
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v4, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "reason"

    iget-object v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "parsed"

    iget v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->totalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "success"

    iget v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->successCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "error"

    iget v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->errorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->totalCount:I

    iget v1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->successCount:I

    iget v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->errorCount:I

    add-int/2addr v1, v2

    sub-int v6, v0, v1

    .line 188
    .local v6, "skippedCount":I
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "unprocessed"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "content-type"

    iget-object v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    sget-object v2, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "interrupted"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/batch/BatchInterrupted;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/batch/BatchInterrupted;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 203
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 206
    :cond_2
    sget-object v0, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "interrupted"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getErrorCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->errorCount:I

    return v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;-><init>(Lcom/google/gdata/data/batch/BatchInterrupted;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSkippedCount()I
    .locals 3

    .prologue
    .line 146
    iget v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->totalCount:I

    iget v1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->successCount:I

    iget v2, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->errorCount:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->successCount:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->totalCount:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->content:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)V
    .locals 0
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted;->contentType:Lcom/google/gdata/util/ContentType;

    .line 157
    return-void
.end method
