.class public Lcom/google/gdata/wireformats/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"

# interfaces
.implements Lcom/google/gdata/wireformats/WireFormatParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/XmlParser$1;,
        Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;,
        Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

.field elementNamespaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private final eventSource:Lcom/google/gdata/data/XmlEventSource;

.field locator:Lorg/xml/sax/Locator;

.field protected namespaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack",
            "<",
            "Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final props:Lcom/google/gdata/wireformats/StreamProperties;

.field protected rootElementName:Ljava/lang/String;

.field protected rootHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

.field protected rootNamespace:Ljava/lang/String;

.field unrecognizedElements:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/wireformats/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/wireformats/XmlParser;->$assertionsDisabled:Z

    .line 85
    const-class v0, Lcom/google/gdata/wireformats/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Lcom/google/gdata/data/XmlEventSource;)V
    .locals 1
    .param p1, "props"    # Lcom/google/gdata/wireformats/StreamProperties;
    .param p2, "eventSource"    # Lcom/google/gdata/data/XmlEventSource;

    .prologue
    .line 464
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    .line 436
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    .line 465
    const-string v0, "stream properties"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v0, "eventSource"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlParser;->props:Lcom/google/gdata/wireformats/StreamProperties;

    .line 468
    iput-object p2, p0, Lcom/google/gdata/wireformats/XmlParser;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    .line 469
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "props"    # Lcom/google/gdata/wireformats/StreamProperties;
    .param p2, "r"    # Ljava/io/Reader;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 452
    new-instance v0, Lcom/google/gdata/wireformats/SaxEventSource;

    invoke-direct {v0, p2}, Lcom/google/gdata/wireformats/SaxEventSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/wireformats/XmlParser;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Lcom/google/gdata/data/XmlEventSource;)V

    .line 455
    const-string v0, "cs"

    invoke-static {p3, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/QName;
    .locals 4
    .param p0, "qName"    # Ljava/lang/String;
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    invoke-static {p1}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 927
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 929
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .end local v0    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {v0, v2, p1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .end local v1    # "parts":[Ljava/lang/String;
    .restart local v0    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_0
    :goto_0
    new-instance v2, Lcom/google/gdata/model/QName;

    invoke-direct {v2, v0, p2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v2

    .line 931
    .restart local v1    # "parts":[Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .end local v0    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    goto :goto_0
.end method

.method private ensureBlobNamespace(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/String;)V
    .locals 6
    .param p1, "handler"    # Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
    .param p2, "qName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 896
    const/4 v2, 0x0

    .line 897
    .local v2, "nsDecl":Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "alias":Ljava/lang/String;
    const-string v3, "xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 904
    .local v1, "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;>;"
    if-eqz v1, :cond_2

    .line 905
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nsDecl":Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;
    check-cast v2, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;

    .line 910
    .restart local v2    # "nsDecl":Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;
    :cond_2
    sget-boolean v3, Lcom/google/gdata/wireformats/XmlParser;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Namespace alias \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' should be mapped in \'namespaceMap\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 914
    :cond_3
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->inBlob:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 916
    iget-object v3, p1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v3, p1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v3}, Lcom/google/gdata/util/XmlBlob;->getNamespaces()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v5, v2, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getCumulativeXmlBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "curBase"    # Ljava/lang/String;
    .param p1, "newBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, "newBaseUri":Ljava/net/URI;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_3

    .line 566
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, "No xml:base established--need an absolute URI."

    invoke-direct {v3, p1, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 573
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "curBaseUri":Ljava/net/URI;
    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 575
    .local v2, "resultUri":Ljava/net/URI;
    sget-boolean v3, Lcom/google/gdata/wireformats/XmlParser;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 576
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0    # "curBaseUri":Ljava/net/URI;
    .end local v2    # "resultUri":Ljava/net/URI;
    .end local p1    # "newBase":Ljava/lang/String;
    :cond_3
    return-object p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v1, :cond_4

    .line 817
    iget v1, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-nez v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v1}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1, v2}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$102(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v1}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-lez v1, :cond_4

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/StringWriter;->write([CII)V

    .line 831
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 835
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_4
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected createRootHandler(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlHandler;
    .locals 2
    .param p1, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .param p2, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ValidationContext;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/wireformats/XmlHandler;"
        }
    .end annotation

    .prologue
    .line 508
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    new-instance v0, Lcom/google/gdata/wireformats/XmlHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/gdata/wireformats/XmlHandler;-><init>(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 765
    sget-object v2, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 767
    iget v2, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-lez v2, :cond_1

    .line 769
    iget v2, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    .line 771
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v2, :cond_0

    .line 773
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 779
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v2, :cond_2

    .line 783
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXmlStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 784
    .local v0, "blob":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/XmlBlob;->setBlob(Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v2, :cond_2

    .line 788
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/XmlBlob;->setFullText(Ljava/lang/String;)V

    .line 795
    .end local v0    # "blob":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v2}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 796
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-static {v3}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->value:Ljava/lang/String;

    .line 799
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->access$102(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 801
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    invoke-virtual {v2}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->processEndElement()V
    :try_end_1
    .catch Lcom/google/gdata/util/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->parent:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iput-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    goto :goto_0

    .line 802
    :catch_1
    move-exception v1

    .line 803
    .local v1, "e":Lcom/google/gdata/util/ParseException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 889
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-boolean v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    if-lez v1, :cond_1

    .line 853
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeUnescaped(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_1
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 9
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/wireformats/ContentValidationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 474
    new-instance v5, Lcom/google/gdata/model/ValidationContext;

    invoke-direct {v5}, Lcom/google/gdata/model/ValidationContext;-><init>()V

    .line 475
    .local v5, "vc":Lcom/google/gdata/model/ValidationContext;
    iget-object v6, p0, Lcom/google/gdata/wireformats/XmlParser;->props:Lcom/google/gdata/wireformats/StreamProperties;

    invoke-interface {v6}, Lcom/google/gdata/wireformats/StreamProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    .line 477
    .local v3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/gdata/wireformats/XmlParser;->createRootHandler(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlHandler;

    move-result-object v6

    iput-object v6, p0, Lcom/google/gdata/wireformats/XmlParser;->rootHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 478
    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v1

    .line 480
    .local v1, "elementName":Lcom/google/gdata/model/QName;
    :goto_0
    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    .line 481
    .local v2, "elementNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    if-nez v2, :cond_1

    move-object v6, v7

    :goto_1
    iput-object v6, p0, Lcom/google/gdata/wireformats/XmlParser;->rootNamespace:Ljava/lang/String;

    .line 482
    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    .line 485
    :try_start_0
    iget-object v6, p0, Lcom/google/gdata/wireformats/XmlParser;->eventSource:Lcom/google/gdata/data/XmlEventSource;

    invoke-interface {v6, p0}, Lcom/google/gdata/data/XmlEventSource;->parse(Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v6

    return-object v6

    .line 478
    .end local v1    # "elementName":Lcom/google/gdata/model/QName;
    .end local v2    # "elementNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_0
    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v1

    goto :goto_0

    .line 481
    .restart local v1    # "elementName":Lcom/google/gdata/model/QName;
    .restart local v2    # "elementNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_1
    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v4

    .line 488
    .local v4, "rootException":Ljava/lang/Exception;
    instance-of v6, v4, Lcom/google/gdata/util/ParseException;

    if-eqz v6, :cond_2

    .line 489
    check-cast v4, Lcom/google/gdata/util/ParseException;

    .end local v4    # "rootException":Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Lcom/google/gdata/wireformats/XmlParser;->throwParseException(Lcom/google/gdata/util/ParseException;)V

    goto :goto_2

    .line 490
    .restart local v4    # "rootException":Ljava/lang/Exception;
    :cond_2
    instance-of v6, v4, Ljava/io/IOException;

    if-eqz v6, :cond_3

    .line 491
    sget-object v6, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v6, v8, v7, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    check-cast v4, Ljava/io/IOException;

    .end local v4    # "rootException":Ljava/lang/Exception;
    throw v4

    .line 494
    .restart local v4    # "rootException":Ljava/lang/Exception;
    :cond_3
    sget-object v6, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v6, v8, v7, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    new-instance v6, Lcom/google/gdata/util/ParseException;

    invoke-direct {v6, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "newLocator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    .line 865
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 22
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v18, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Start element "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 591
    .local v15, "parentHandler":Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->rootNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->rootHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 620
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->parent:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->qName:Ljava/lang/String;

    .line 626
    if-eqz v15, :cond_1

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    .line 634
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 636
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, "attrNamespace":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "attrLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, "attrValue":Ljava/lang/String;
    const-string v18, "http://www.w3.org/XML/1998/namespace"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 642
    const-string v18, "lang"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    .line 645
    sget-object v18, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "xml:lang="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 634
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 597
    .end local v6    # "attrLocalName":Ljava/lang/String;
    .end local v7    # "attrNamespace":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 598
    new-instance v18, Lorg/xml/sax/SAXException;

    new-instance v19, Lcom/google/gdata/util/ParseException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid root element, expected (namespace uri:local name) of ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->rootNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->rootElementName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", found ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 605
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 611
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/gdata/wireformats/XmlParser;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/QName;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->getChildHandler(Lcom/google/gdata/model/QName;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;
    :try_end_1
    .catch Lcom/google/gdata/util/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 613
    :catch_0
    move-exception v10

    .line 614
    .local v10, "e":Lcom/google/gdata/util/ParseException;
    new-instance v18, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 615
    .end local v10    # "e":Lcom/google/gdata/util/ParseException;
    :catch_1
    move-exception v10

    .line 616
    .local v10, "e":Ljava/io/IOException;
    new-instance v18, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 647
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v6    # "attrLocalName":Ljava/lang/String;
    .restart local v7    # "attrNamespace":Ljava/lang/String;
    .restart local v9    # "attrValue":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_5
    :try_start_2
    const-string v18, "base"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/google/gdata/wireformats/XmlParser;->getCumulativeXmlBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    .line 651
    sget-object v18, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "xml:base="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/gdata/util/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_2

    .line 671
    .end local v6    # "attrLocalName":Ljava/lang/String;
    .end local v7    # "attrNamespace":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 672
    .local v10, "e":Lcom/google/gdata/util/ParseException;
    new-instance v18, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 657
    .end local v10    # "e":Lcom/google/gdata/util/ParseException;
    :cond_6
    const/4 v11, 0x0

    :goto_3
    :try_start_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_7

    .line 659
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    .line 660
    .restart local v7    # "attrNamespace":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, "attrQName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 662
    .restart local v6    # "attrLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 664
    .restart local v9    # "attrValue":Ljava/lang/String;
    sget-object v18, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Attribute "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    invoke-static {v8, v7, v6}, Lcom/google/gdata/wireformats/XmlParser;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/QName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->processAttribute(Lcom/google/gdata/model/QName;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/gdata/util/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 657
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 673
    .end local v6    # "attrLocalName":Ljava/lang/String;
    .end local v7    # "attrNamespace":Ljava/lang/String;
    .end local v8    # "attrQName":Ljava/lang/String;
    .end local v9    # "attrValue":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 674
    .local v10, "e":Ljava/net/URISyntaxException;
    new-instance v18, Lorg/xml/sax/SAXException;

    new-instance v19, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v10}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 675
    .end local v10    # "e":Ljava/net/URISyntaxException;
    :catch_4
    move-exception v10

    .line 676
    .local v10, "e":Ljava/lang/NumberFormatException;
    new-instance v18, Lorg/xml/sax/SAXException;

    new-instance v19, Lcom/google/gdata/util/ParseException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid integer format. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 682
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->okToInitializeXmlBlob:Z

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/gdata/util/XmlBlob;->setLang(Ljava/lang/String;)V

    .line 691
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/gdata/util/XmlBlob;->setBase(Ljava/lang/String;)V

    .line 756
    .end local v11    # "i":I
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 757
    return-void

    .line 707
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/gdata/wireformats/XmlParser;->unrecognizedElements:I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 712
    .local v13, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Stack;

    .line 713
    .local v14, "nsDecls":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;>;"
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/util/Stack;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 714
    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;->inBlob:Z

    goto :goto_5

    .line 718
    .end local v13    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v14    # "nsDecls":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 719
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    .line 725
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 727
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 729
    .local v5, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    .restart local v11    # "i":I
    :goto_6
    if-ltz v11, :cond_f

    .line 731
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v16

    .line 732
    .local v16, "qNameAttr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/wireformats/XmlParser;->ensureBlobNamespace(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v17

    .line 736
    .local v17, "value":Ljava/lang/String;
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .local v4, "attr":Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndex:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    move-object/from16 v18, v0

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 729
    :cond_e
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 746
    .end local v4    # "attr":Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
    .end local v16    # "qNameAttr":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/wireformats/XmlParser;->ensureBlobNamespace(Lcom/google/gdata/wireformats/XmlParser$ElementHandler;Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_4

    .line 749
    :catch_5
    move-exception v10

    .line 750
    .local v10, "e":Ljava/io/IOException;
    new-instance v18, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v18
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 873
    .local v0, "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;>;"
    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/util/Stack;

    .end local v0    # "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;>;"
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 875
    .restart local v0    # "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;>;"
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->namespaceMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-direct {v1, p1, p2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .local v1, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v2, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Lcom/google/gdata/wireformats/XmlParser$1;)V

    .line 880
    .local v2, "nsDecl":Lcom/google/gdata/wireformats/XmlParser$NamespaceDecl;
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    return-void
.end method

.method protected throwParseException(Lcom/google/gdata/util/ParseException;)V
    .locals 5
    .param p1, "e"    # Lcom/google/gdata/util/ParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    if-eqz v2, :cond_1

    .line 516
    const-string v0, ""

    .line 517
    .local v0, "elementLocation":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    if-eqz v2, :cond_0

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->curHandler:Lcom/google/gdata/wireformats/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/wireformats/XmlParser$ElementHandler;->qName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/wireformats/XmlParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "location":Ljava/lang/String;
    sget-object v2, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1, p1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gdata/util/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 532
    .end local v0    # "elementLocation":Ljava/lang/String;
    .end local v1    # "location":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/google/gdata/wireformats/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    throw p1
.end method
