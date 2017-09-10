.class public Lcom/google/gdata/util/XmlParser$ElementHandler;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field blobNamespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buffer:Ljava/lang/StringBuilder;

.field fullTextIndex:Z

.field fullTextIndexWriter:Ljava/io/StringWriter;

.field innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

.field innerXmlStringWriter:Ljava/io/StringWriter;

.field mixedContent:Z

.field okToInitializeXmlBlob:Z

.field parent:Lcom/google/gdata/util/XmlParser$ElementHandler;

.field public qName:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public xmlBase:Ljava/lang/String;

.field xmlBlob:Lcom/google/gdata/util/XmlBlob;

.field public xmlLang:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/google/gdata/util/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/util/XmlParser$ElementHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->okToInitializeXmlBlob:Z

    .line 180
    iput-boolean v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->mixedContent:Z

    .line 189
    iput-boolean v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndex:Z

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/util/XmlParser$ElementHandler;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/util/XmlParser$ElementHandler;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/util/XmlParser$ElementHandler;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->buffer:Ljava/lang/StringBuilder;

    return-object p1
.end method


# virtual methods
.method public getAbsoluteUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uriValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/gdata/util/XmlParser;->getCumulativeXmlBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .param p2, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "result":Ljava/lang/Boolean;
    const-string v4, ""

    invoke-interface {p1, v4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->parseBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 455
    return-object v2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "ex":Lcom/google/gdata/util/ParseException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->invalidAttributeValue:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v4}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 450
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 452
    throw v1
.end method

.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)",
            "Lcom/google/gdata/util/XmlParser$ElementHandler;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    .local p5, "namespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    return-object v0
.end method

.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-nez v1, :cond_0

    .line 291
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->unrecognizedElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 293
    .local v0, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized element \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 294
    throw v0

    .line 296
    .end local v0    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_0
    invoke-static {}, Lcom/google/gdata/util/XmlParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No child handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Treating as arbitrary foreign XML."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    return-object v1
.end method

.method public initializeXmlBlob(Lcom/google/gdata/util/XmlBlob;ZZ)V
    .locals 3
    .param p1, "xmlBlob"    # Lcom/google/gdata/util/XmlBlob;
    .param p2, "mixedContent"    # Z
    .param p3, "fullTextIndex"    # Z

    .prologue
    .line 382
    sget-boolean v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->okToInitializeXmlBlob:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 385
    iput-boolean p2, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->mixedContent:Z

    .line 386
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iput-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXmlStringWriter:Ljava/io/StringWriter;

    .line 388
    :try_start_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter;

    iget-object v2, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXmlStringWriter:Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    iput-boolean p3, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndex:Z

    .line 396
    if-eqz p3, :cond_1

    .line 397
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iput-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    .line 399
    :cond_1
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected parseBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 479
    :goto_0
    return-object v1

    .line 474
    :cond_0
    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 478
    :cond_2
    const-string/jumbo v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 482
    :cond_4
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidBooleanAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 484
    .local v0, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for boolean attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 485
    throw v0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 346
    return-void
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/gdata/util/XmlParser$ElementHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->textNotAllowed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 359
    :cond_0
    return-void
.end method
