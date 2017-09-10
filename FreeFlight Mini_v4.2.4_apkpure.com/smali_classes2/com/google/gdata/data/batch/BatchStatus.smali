.class public Lcom/google/gdata/data/batch/BatchStatus;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "BatchStatus.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;
.implements Lcom/google/gdata/data/batch/IBatchStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/batch/BatchStatus$1;,
        Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;
    }
.end annotation


# instance fields
.field private code:I

.field private content:Ljava/lang/String;

.field private contentType:Lcom/google/gdata/util/ContentType;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ServiceException;)V
    .locals 2
    .param p1, "e"    # Lcom/google/gdata/util/ServiceException;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getHttpErrorCodeOverride()I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    .line 66
    iget v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->reason:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->contentType:Lcom/google/gdata/util/ContentType;

    .line 71
    invoke-virtual {p1}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->content:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static createCreatedStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-direct {v0}, Lcom/google/gdata/data/batch/BatchStatus;-><init>()V

    .line 85
    .local v0, "retval":Lcom/google/gdata/data/batch/BatchStatus;
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/batch/BatchStatus;->setCode(I)V

    .line 86
    const-string v1, "Created"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method public static createSuccessStatus()Lcom/google/gdata/data/batch/BatchStatus;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-direct {v0}, Lcom/google/gdata/data/batch/BatchStatus;-><init>()V

    .line 77
    .local v0, "retval":Lcom/google/gdata/data/batch/BatchStatus;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/batch/BatchStatus;->setCode(I)V

    .line 78
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 93
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 94
    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 95
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v4, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    if-lez v0, :cond_0

    .line 150
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "code"

    iget v2, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->reason:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "reason"

    iget-object v2, p0, Lcom/google/gdata/data/batch/BatchStatus;->reason:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->contentType:Lcom/google/gdata/util/ContentType;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "content-type"

    iget-object v2, p0, Lcom/google/gdata/data/batch/BatchStatus;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    sget-object v2, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "status"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/batch/BatchStatus;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/batch/BatchStatus;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->content:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 169
    :cond_3
    sget-object v0, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "status"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
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
    .line 188
    new-instance v0, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p4, v1}, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;-><init>(Lcom/google/gdata/data/batch/BatchStatus;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;Lcom/google/gdata/data/batch/BatchStatus$1;)V

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/google/gdata/data/batch/BatchStatus;->code:I

    .line 108
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchStatus;->content:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)V
    .locals 0
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchStatus;->contentType:Lcom/google/gdata/util/ContentType;

    .line 128
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchStatus;->reason:Ljava/lang/String;

    .line 118
    return-void
.end method
