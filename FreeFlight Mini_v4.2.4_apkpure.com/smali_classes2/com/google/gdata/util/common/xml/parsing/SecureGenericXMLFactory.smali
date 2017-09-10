.class public Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;
.super Ljava/lang/Object;
.source "SecureGenericXMLFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$1;,
        Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;,
        Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;,
        Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;
    }
.end annotation


# static fields
.field private static final NOOP_RESOLVER:Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;-><init>(Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$1;)V

    sput-object v0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;->NOOP_RESOLVER:Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;->NOOP_RESOLVER:Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;

    return-object v0
.end method

.method public static getDocumentBuilderFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 1
    .param p0, "factory"    # Ljavax/xml/parsers/DocumentBuilderFactory;

    .prologue
    .line 56
    new-instance v0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;-><init>(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    return-object v0
.end method

.method public static getSAXParserFactory(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParserFactory;
    .locals 1
    .param p0, "factory"    # Ljavax/xml/parsers/SAXParserFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;)V

    return-object v0
.end method
