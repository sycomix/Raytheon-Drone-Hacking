.class final Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;
.super Ljava/lang/Object;
.source "SecureGenericXMLFactory.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecureEntityResolver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$1;

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method
