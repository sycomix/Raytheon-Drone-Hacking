.class public Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;
.super Ljavax/xml/parsers/DocumentBuilderFactory;
.source "SecureGenericXMLFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SecureDocumentBuilderFactory"
.end annotation


# instance fields
.field private factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method protected constructor <init>(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 2
    .param p1, "factory"    # Ljavax/xml/parsers/DocumentBuilderFactory;

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 231
    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 237
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :goto_0
    :try_start_1
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    .line 261
    :goto_1
    :try_start_2
    const-string v0, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 267
    :goto_2
    :try_start_3
    const-string v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 276
    :goto_3
    :try_start_4
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 281
    :goto_4
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    goto :goto_0

    .line 278
    :catch_2
    move-exception v0

    goto :goto_4

    .line 270
    :catch_3
    move-exception v0

    goto :goto_3

    .line 263
    :catch_4
    move-exception v0

    goto :goto_2

    .line 257
    :catch_5
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->getFeature(Ljava/lang/String;)Z

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
    .line 372
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public isCoalescing()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isCoalescing()Z

    move-result v0

    return v0
.end method

.method public isExpandEntityReferences()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isExpandEntityReferences()Z

    move-result v0

    return v0
.end method

.method public isIgnoringComments()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringComments()Z

    move-result v0

    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringElementContentWhitespace()Z

    move-result v0

    return v0
.end method

.method public isIncludeAware()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isXIncludeAware()Z

    move-result v0

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isNamespaceAware()Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->isValidating()Z

    move-result v0

    return v0
.end method

.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 286
    .local v0, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {}, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory;->access$100()Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 287
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method public setCoalescing(Z)V
    .locals 1
    .param p1, "coalescing"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 318
    return-void
.end method

.method public setExpandEntityReferences(Z)V
    .locals 1
    .param p1, "expandEntityRef"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 308
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 363
    return-void
.end method

.method public setIgnoringComments(Z)V
    .locals 1
    .param p1, "ignoreComments"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 313
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 1
    .param p1, "whitespace"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 303
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 1
    .param p1, "awareness"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 293
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
    .line 377
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 378
    return-void
.end method

.method public setValidating(Z)V
    .locals 1
    .param p1, "validating"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 298
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
    .line 382
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/parsing/SecureGenericXMLFactory$SecureDocumentBuilderFactory;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 383
    return-void
.end method
