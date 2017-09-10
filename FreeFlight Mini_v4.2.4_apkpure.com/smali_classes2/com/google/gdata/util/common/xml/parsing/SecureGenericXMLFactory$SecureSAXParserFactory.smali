.class public Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SecureGenericXMLFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SecureSAXParserFactory"
.end annotation


# instance fields
.field private factory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method protected constructor <init>(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 2
    .param p1, "factory"    # Ljavax/xml/parsers/SAXParserFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    .line 82
    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 88
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :goto_0
    :try_start_1
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_8

    .line 116
    :goto_1
    :try_start_2
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_6

    .line 124
    :goto_2
    :try_start_3
    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 135
    :goto_3
    :try_start_4
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 141
    :goto_4
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    goto :goto_0

    .line 138
    :catch_2
    move-exception v0

    goto :goto_4

    .line 136
    :catch_3
    move-exception v0

    goto :goto_4

    .line 129
    :catch_4
    move-exception v0

    goto :goto_3

    .line 127
    :catch_5
    move-exception v0

    goto :goto_3

    .line 120
    :catch_6
    move-exception v0

    goto :goto_2

    .line 118
    :catch_7
    move-exception v0

    goto :goto_2

    .line 111
    :catch_8
    move-exception v0

    goto :goto_1

    .line 109
    :catch_9
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->isNamespaceAware()Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->isValidating()Z

    move-result v0

    return v0
.end method

.method public isXIncludeAware()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->isXIncludeAware()Z

    move-result v0

    return v0
.end method

.method public newSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v2, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 148
    .local v0, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 149
    .local v1, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-static {}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;->access$100()Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 151
    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 1
    .param p1, "awareness"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 157
    return-void
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 1
    .param p1, "schema"    # Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 196
    return-void
.end method

.method public setValidating(Z)V
    .locals 1
    .param p1, "validating"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 162
    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureSAXParserFactory;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    .line 202
    return-void
.end method
