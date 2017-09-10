.class public Lcom/google/gdata/wireformats/SaxEventSource;
.super Ljava/lang/Object;
.source "SaxEventSource.java"

# interfaces
.implements Lcom/google/gdata/data/XmlEventSource;


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final parserFactory:Ljavax/xml/parsers/SAXParserFactory;


# instance fields
.field private final reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/gdata/wireformats/SaxEventSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/SaxEventSource;->logger:Ljava/util/logging/Logger;

    .line 45
    invoke-static {}, Lcom/google/gdata/wireformats/SaxEventSource;->createSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/SaxEventSource;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "reader"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/google/gdata/wireformats/SaxEventSource;->reader:Ljava/io/Reader;

    .line 79
    return-void
.end method

.method private static createSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 5

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_1
    invoke-static {v1}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;->getSAXParserFactory(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 55
    .local v2, "secureFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    move-object v1, v2

    .line 60
    .end local v2    # "secureFactory":Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to create a SAX parser factory"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 57
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private createSaxParser()Ljavax/xml/parsers/SAXParser;
    .locals 3

    .prologue
    .line 90
    :try_start_0
    sget-object v1, Lcom/google/gdata/wireformats/SaxEventSource;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid parser configuration"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create a SAX parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public parse(Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/gdata/wireformats/SaxEventSource;->createSaxParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 83
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    new-instance v0, Lorg/xml/sax/helpers/ParserAdapter;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V

    .line 84
    .local v0, "pa":Lorg/xml/sax/helpers/ParserAdapter;
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 85
    new-instance v2, Lorg/xml/sax/InputSource;

    iget-object v3, p0, Lcom/google/gdata/wireformats/SaxEventSource;->reader:Ljava/io/Reader;

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/ParserAdapter;->parse(Lorg/xml/sax/InputSource;)V

    .line 86
    return-void
.end method
