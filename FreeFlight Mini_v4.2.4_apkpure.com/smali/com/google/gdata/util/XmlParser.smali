.class public Lcom/google/gdata/util/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/XmlParser$1;,
        Lcom/google/gdata/util/XmlParser$NamespaceDecl;,
        Lcom/google/gdata/util/XmlParser$ElementHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;

.field private static parserFactory:Ljavax/xml/parsers/SAXParserFactory;


# instance fields
.field curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

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

.field locator:Lorg/xml/sax/Locator;

.field protected namespaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack",
            "<",
            "Lcom/google/gdata/util/XmlParser$NamespaceDecl;",
            ">;>;"
        }
    .end annotation
.end field

.field protected rootElementName:Ljava/lang/String;

.field protected rootHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

.field protected rootNamespace:Ljava/lang/String;

.field unrecognizedElements:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/google/gdata/util/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/util/XmlParser;->$assertionsDisabled:Z

    .line 78
    const-class v0, Lcom/google/gdata/util/XmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/XmlParser;->namespaceMap:Ljava/util/HashMap;

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private ensureBlobNamespace(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;)V
    .locals 7
    .param p1, "handler"    # Lcom/google/gdata/util/XmlParser$ElementHandler;
    .param p2, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1108
    const/4 v2, 0x0

    .line 1109
    .local v2, "nsDecl":Lcom/google/gdata/util/XmlParser$NamespaceDecl;
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v3, "xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 1116
    .local v1, "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/util/XmlParser$NamespaceDecl;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "nsDecl":Lcom/google/gdata/util/XmlParser$NamespaceDecl;
    check-cast v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;

    .line 1121
    .restart local v2    # "nsDecl":Lcom/google/gdata/util/XmlParser$NamespaceDecl;
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1122
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Lcom/google/gdata/util/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undeclared namespace prefix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1128
    :cond_3
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;->inBlob:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/google/gdata/util/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1130
    iget-object v3, p1, Lcom/google/gdata/util/XmlParser$ElementHandler;->blobNamespaces:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    iget-object v3, p1, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iget-object v3, v3, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    new-instance v4, Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v5, v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;->ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

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
    .line 771
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 773
    .local v1, "newBaseUri":Ljava/net/URI;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 776
    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_3

    .line 777
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, "No xml:base established--need an absolute URI."

    invoke-direct {v3, p1, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 784
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, "curBaseUri":Ljava/net/URI;
    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 786
    .local v2, "resultUri":Ljava/net/URI;
    sget-boolean v3, Lcom/google/gdata/util/XmlParser;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 787
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0    # "curBaseUri":Ljava/net/URI;
    .end local v2    # "resultUri":Ljava/net/URI;
    .end local p1    # "newBase":Ljava/lang/String;
    :cond_3
    return-object p1
.end method

.method private static getSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;->getSAXParserFactory(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 99
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 107
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    goto :goto_0
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
    .line 1026
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v1, :cond_4

    .line 1028
    iget v1, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    if-nez v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-static {v1}, Lcom/google/gdata/util/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/util/XmlParser$ElementHandler;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/google/gdata/util/XmlParser$ElementHandler;->access$102(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-static {v1}, Lcom/google/gdata/util/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/util/XmlParser$ElementHandler;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1037
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-boolean v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    if-lez v1, :cond_4

    .line 1040
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-boolean v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/StringWriter;->write([CII)V

    .line 1042
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1046
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :cond_4
    return-void

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 977
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

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

    .line 979
    iget v2, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    if-lez v2, :cond_1

    .line 981
    iget v2, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    .line 983
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v2, :cond_0

    .line 985
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 991
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v2, :cond_0

    .line 993
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXmlStringWriter:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 996
    .local v0, "blob":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 997
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/XmlBlob;->setBlob(Ljava/lang/String;)V

    .line 999
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-boolean v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v2, :cond_2

    .line 1000
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/XmlBlob;->setFullText(Ljava/lang/String;)V

    .line 1007
    .end local v0    # "blob":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-static {v2}, Lcom/google/gdata/util/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/util/XmlParser$ElementHandler;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1008
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-static {v3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->access$100(Lcom/google/gdata/util/XmlParser$ElementHandler;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    .line 1011
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->access$102(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1013
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-virtual {v2}, Lcom/google/gdata/util/XmlParser$ElementHandler;->processEndElement()V
    :try_end_1
    .catch Lcom/google/gdata/util/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1018
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->parent:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iput-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 1014
    :catch_1
    move-exception v1

    .line 1015
    .local v1, "e":Lcom/google/gdata/util/ParseException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/gdata/util/XmlParser;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1100
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
    .line 1060
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-boolean v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->mixedContent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    if-lez v1, :cond_1

    .line 1064
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v1, v1, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeUnescaped(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :cond_1
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rootHandler"    # Lcom/google/gdata/util/XmlParser$ElementHandler;
    .param p2, "rootNamespace"    # Ljava/lang/String;
    .param p3, "rootElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No content source defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "rootHandler"    # Lcom/google/gdata/util/XmlParser$ElementHandler;
    .param p3, "rootNamespace"    # Ljava/lang/String;
    .param p4, "rootElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 622
    .local v0, "is":Lorg/xml/sax/InputSource;
    iput-object p2, p0, Lcom/google/gdata/util/XmlParser;->rootHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 623
    iput-object p3, p0, Lcom/google/gdata/util/XmlParser;->rootNamespace:Ljava/lang/String;

    .line 624
    iput-object p4, p0, Lcom/google/gdata/util/XmlParser;->rootElementName:Ljava/lang/String;

    .line 625
    invoke-virtual {p0, v0}, Lcom/google/gdata/util/XmlParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 626
    return-void
.end method

.method public parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "rootHandler"    # Lcom/google/gdata/util/XmlParser$ElementHandler;
    .param p3, "rootNamespace"    # Ljava/lang/String;
    .param p4, "rootElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 582
    .local v0, "is":Lorg/xml/sax/InputSource;
    iput-object p2, p0, Lcom/google/gdata/util/XmlParser;->rootHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 583
    iput-object p3, p0, Lcom/google/gdata/util/XmlParser;->rootNamespace:Ljava/lang/String;

    .line 584
    iput-object p4, p0, Lcom/google/gdata/util/XmlParser;->rootElementName:Ljava/lang/String;

    .line 585
    invoke-virtual {p0, v0}, Lcom/google/gdata/util/XmlParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 586
    return-void
.end method

.method protected parse(Lorg/xml/sax/InputSource;)V
    .locals 7
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 687
    :try_start_0
    sget-object v4, Lcom/google/gdata/util/XmlParser;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v4, :cond_0

    .line 688
    invoke-static {}, Lcom/google/gdata/util/XmlParser;->getSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    sput-object v4, Lcom/google/gdata/util/XmlParser;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 691
    :cond_0
    sget-object v4, Lcom/google/gdata/util/XmlParser;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 692
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    new-instance v1, Lorg/xml/sax/helpers/ParserAdapter;

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V

    .line 693
    .local v1, "pa":Lorg/xml/sax/helpers/ParserAdapter;
    invoke-virtual {v1, p0}, Lorg/xml/sax/helpers/ParserAdapter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 694
    invoke-virtual {v1, p1}, Lorg/xml/sax/helpers/ParserAdapter;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    .end local v1    # "pa":Lorg/xml/sax/helpers/ParserAdapter;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 700
    .local v2, "rootException":Ljava/lang/Exception;
    instance-of v4, v2, Lcom/google/gdata/util/ParseException;

    if-eqz v4, :cond_1

    .line 702
    check-cast v2, Lcom/google/gdata/util/ParseException;

    .end local v2    # "rootException":Ljava/lang/Exception;
    invoke-virtual {p0, v2}, Lcom/google/gdata/util/XmlParser;->throwParseException(Lcom/google/gdata/util/ParseException;)V

    goto :goto_0

    .line 704
    .restart local v2    # "rootException":Ljava/lang/Exception;
    :cond_1
    instance-of v4, v2, Ljava/io/IOException;

    if-eqz v4, :cond_2

    .line 706
    sget-object v4, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4, v5, v6, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 707
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "rootException":Ljava/lang/Exception;
    throw v2

    .line 711
    .restart local v2    # "rootException":Ljava/lang/Exception;
    :cond_2
    sget-object v4, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v4, v5, v6, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-direct {v4, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 714
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v2    # "rootException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 716
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v4, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4, v5, v6, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-direct {v4, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/google/gdata/util/XmlParser;->locator:Lorg/xml/sax/Locator;

    .line 1076
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
    .line 798
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v19, v0

    .line 802
    .local v19, "parentHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-nez v2, :cond_4

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->rootNamespace:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->rootElementName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->rootHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 834
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    if-nez v2, :cond_a

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->parent:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->qName:Ljava/lang/String;

    .line 840
    if-eqz v19, :cond_1

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    .line 848
    :cond_1
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_6

    .line 850
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v11

    .line 851
    .local v11, "attrNamespace":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    .line 852
    .local v10, "attrLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    .line 854
    .local v13, "attrValue":Ljava/lang/String;
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    const-string v2, "lang"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iput-object v13, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    .line 859
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xml:lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 848
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 809
    .end local v10    # "attrLocalName":Ljava/lang/String;
    .end local v11    # "attrNamespace":Ljava/lang/String;
    .end local v13    # "attrValue":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->rootElementName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 811
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Lcom/google/gdata/util/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid root element, expected (namespace uri:local name) of ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/gdata/util/XmlParser;->rootNamespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/gdata/util/XmlParser;->rootElementName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 819
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    if-nez v2, :cond_0

    .line 825
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/gdata/util/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/util/List;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;
    :try_end_1
    .catch Lcom/google/gdata/util/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 827
    :catch_0
    move-exception v14

    .line 828
    .local v14, "e":Lcom/google/gdata/util/ParseException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 829
    .end local v14    # "e":Lcom/google/gdata/util/ParseException;
    :catch_1
    move-exception v14

    .line 830
    .local v14, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 861
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "attrLocalName":Ljava/lang/String;
    .restart local v11    # "attrNamespace":Ljava/lang/String;
    .restart local v13    # "attrValue":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_5
    :try_start_2
    const-string v2, "base"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/gdata/util/XmlParser;->getCumulativeXmlBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    .line 865
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xml:base="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v4, v4, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/gdata/util/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_2

    .line 884
    .end local v10    # "attrLocalName":Ljava/lang/String;
    .end local v11    # "attrNamespace":Ljava/lang/String;
    .end local v13    # "attrValue":Ljava/lang/String;
    .end local v15    # "i":I
    :catch_2
    move-exception v14

    .line 885
    .local v14, "e":Lcom/google/gdata/util/ParseException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 871
    .end local v14    # "e":Lcom/google/gdata/util/ParseException;
    .restart local v15    # "i":I
    :cond_6
    :try_start_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    :goto_3
    if-ltz v15, :cond_7

    .line 873
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v11

    .line 874
    .restart local v11    # "attrNamespace":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    .line 875
    .local v12, "attrQName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    .line 876
    .restart local v10    # "attrLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    .line 878
    .restart local v13    # "attrValue":Ljava/lang/String;
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-virtual {v2, v11, v12, v10, v13}, Lcom/google/gdata/util/XmlParser$ElementHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/gdata/util/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 871
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 886
    .end local v10    # "attrLocalName":Ljava/lang/String;
    .end local v11    # "attrNamespace":Ljava/lang/String;
    .end local v12    # "attrQName":Ljava/lang/String;
    .end local v13    # "attrValue":Ljava/lang/String;
    .end local v15    # "i":I
    :catch_3
    move-exception v14

    .line 887
    .local v14, "e":Ljava/net/URISyntaxException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 888
    .end local v14    # "e":Ljava/net/URISyntaxException;
    :catch_4
    move-exception v14

    .line 889
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Lcom/google/gdata/util/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid integer format. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 895
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->okToInitializeXmlBlob:Z

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v2, :cond_9

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlLang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/XmlBlob;->setLang(Ljava/lang/String;)V

    .line 904
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/util/XmlParser$ElementHandler;->xmlBase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/XmlBlob;->setBase(Ljava/lang/String;)V

    .line 968
    .end local v15    # "i":I
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 969
    return-void

    .line 919
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/gdata/util/XmlParser;->unrecognizedElements:I

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 924
    .local v17, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Stack;

    .line 925
    .local v18, "nsDecls":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/util/XmlParser$NamespaceDecl;>;"
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 926
    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;->inBlob:Z

    goto :goto_5

    .line 930
    .end local v17    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v18    # "nsDecls":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/util/XmlParser$NamespaceDecl;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-nez v2, :cond_d

    .line 931
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 937
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    if-eqz v2, :cond_9

    .line 939
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 941
    .local v9, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .restart local v15    # "i":I
    :goto_6
    if-ltz v15, :cond_f

    .line 943
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v20

    .line 944
    .local v20, "qNameAttr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/util/XmlParser;->ensureBlobNamespace(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v21

    .line 948
    .local v21, "value":Ljava/lang/String;
    new-instance v8, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .local v8, "attr":Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-boolean v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndex:Z

    if-eqz v2, :cond_e

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->fullTextIndexWriter:Ljava/io/StringWriter;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 941
    :cond_e
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 958
    .end local v8    # "attr":Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
    .end local v20    # "qNameAttr":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/util/XmlParser;->ensureBlobNamespace(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v2, v2, Lcom/google/gdata/util/XmlParser$ElementHandler;->innerXml:Lcom/google/gdata/util/common/xml/XmlWriter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gdata/util/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v9, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_4

    .line 961
    :catch_5
    move-exception v14

    .line 962
    .local v14, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 1083
    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 1084
    .local v0, "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/util/XmlParser$NamespaceDecl;>;"
    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Ljava/util/Stack;

    .end local v0    # "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/util/XmlParser$NamespaceDecl;>;"
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1086
    .restart local v0    # "mapping":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/gdata/util/XmlParser$NamespaceDecl;>;"
    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :cond_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-direct {v1, p1, p2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    .local v1, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v2, Lcom/google/gdata/util/XmlParser$NamespaceDecl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/gdata/util/XmlParser$NamespaceDecl;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Lcom/google/gdata/util/XmlParser$1;)V

    .line 1091
    .local v2, "nsDecl":Lcom/google/gdata/util/XmlParser$NamespaceDecl;
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->elementNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
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
    .line 725
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->locator:Lorg/xml/sax/Locator;

    if-eqz v2, :cond_1

    .line 727
    const-string v0, ""

    .line 728
    .local v0, "elementLocation":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    if-eqz v2, :cond_0

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->curHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iget-object v3, v3, Lcom/google/gdata/util/XmlParser$ElementHandler;->qName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/util/XmlParser;->locator:Lorg/xml/sax/Locator;

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

    .line 737
    .local v1, "location":Ljava/lang/String;
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2, v3, v1, p1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
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

    .line 743
    .end local v0    # "elementLocation":Ljava/lang/String;
    .end local v1    # "location":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/google/gdata/util/XmlParser;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    throw p1
.end method
